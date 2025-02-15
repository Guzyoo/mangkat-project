import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as lat_lng2;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  final TextEditingController _startController = TextEditingController();
  final TextEditingController _endController = TextEditingController();
  lat_lng2.LatLng? _startPoint;
  lat_lng2.LatLng? _endPoint;
  List<lat_lng2.LatLng> _polylinePoints = [];
  List<Map<String, dynamic>> _navigationSteps = [];
  double _totalDistance = 0.0;

  void _searchAndNavigate() async {
    if (_startController.text.isNotEmpty && _endController.text.isNotEmpty) {
      await _handleSearch(
          _startController.text, (location) => _startPoint = location);
      await _handleSearch(
          _endController.text, (location) => _endPoint = location);

      if (_startPoint != null && _endPoint != null) {
        // Move map to show both points (adjust manually)
        _mapController.move(
          lat_lng2.LatLng(
            (_startPoint!.latitude + _endPoint!.latitude) / 2,
            (_startPoint!.longitude + _endPoint!.longitude) / 2,
          ),
          13.0,
        );

        // Get the route and navigation steps
        await _getPolylinePoints();
        await _getNavigationSteps();
      }
    }
  }

  Future<void> _handleSearch(
      String query, void Function(lat_lng2.LatLng) onLocationSelected) async {
    var response = await http.get(Uri.parse(
        'https://api.mapbox.com/geocoding/v5/mapbox.places/$query.json?access_token=pk.eyJ1Ijoic21pbHloeGMiLCJhIjoiY2x3aXpkbWExMHFwcTJrcHB1cGk0cHZ6cSJ9.ly840HMC2TwMAhCnhK4kmQ'));
    var locationData = json.decode(response.body);

    List features = locationData['features'];

    if (features.length > 1) {
      // Multiple results found, show dialog for user to select one
      List<Widget> addressOptions = features.map((feature) {
        return SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context, feature);
          },
          child: Text(feature['place_name']),
        );
      }).toList();

      var selectedFeature = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Select an address'),
            children: addressOptions,
          );
        },
      );

      if (selectedFeature != null) {
        double lat = selectedFeature['center'][1];
        double lng = selectedFeature['center'][0];
        onLocationSelected(lat_lng2.LatLng(lat, lng));
      }
    } else if (features.length == 1) {
      // Only one result found, proceed with it
      double lat = features[0]['center'][1];
      double lng = features[0]['center'][0];
      onLocationSelected(lat_lng2.LatLng(lat, lng));
    }
  }

  Future<void> _getPolylinePoints() async {
    var response = await http.get(Uri.parse(
        'https://api.mapbox.com/directions/v5/mapbox/driving/${_startPoint!.longitude},${_startPoint!.latitude};${_endPoint!.longitude},${_endPoint!.latitude}?geometries=geojson&access_token=pk.eyJ1Ijoic21pbHloeGMiLCJhIjoiY2x3aXpkbWExMHFwcTJrcHB1cGk0cHZ6cSJ9.ly840HMC2TwMAhCnhK4kmQ'));

    var jsonResponse = json.decode(response.body);
    var polyline = jsonResponse['routes'][0]['geometry']['coordinates'];

    setState(() {
      _polylinePoints = polyline
          .map<lat_lng2.LatLng>((point) => lat_lng2.LatLng(point[1], point[0]))
          .toList();
    });
  }

  Future<void> _getNavigationSteps() async {
    var response = await http.get(Uri.parse(
        'https://api.mapbox.com/directions/v5/mapbox/driving/${_startPoint!.longitude},${_startPoint!.latitude};${_endPoint!.longitude},${_endPoint!.latitude}?steps=true&access_token=pk.eyJ1Ijoic21pbHloeGMiLCJhIjoiY2x3aXpkbWExMHFwcTJrcHB1cGk0cHZ6cSJ9.ly840HMC2TwMAhCnhK4kmQ'));

    var jsonResponse = json.decode(response.body);
    var steps = jsonResponse['routes'][0]['legs'][0]['steps'];
    double totalDistance =
        jsonResponse['routes'][0]['distance'] / 1000; // distance in km

    setState(() {
      _navigationSteps = steps
          .map<Map<String, dynamic>>((step) => {
                'instruction': step['maneuver']['instruction'].toString(),
                'distance': (step['distance'] / 1000)
                    .toStringAsFixed(2) // distance in km
              })
          .toList();
      _totalDistance = totalDistance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OpenStreetMap Navigation'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _startController,
                  decoration: InputDecoration(hintText: 'Start Location'),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: _endController,
                  decoration: InputDecoration(hintText: 'End Location'),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: _searchAndNavigate,
              ),
            ],
          ),
          Expanded(
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                initialCenter: lat_lng2.LatLng(51.5, -0.09),
                initialZoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c'],
                ),
                if (_startPoint != null && _endPoint != null)
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: _startPoint!,
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                      ),
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: _endPoint!,
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                if (_polylinePoints.isNotEmpty)
                  PolylineLayer(
                    polylines: [
                      Polyline(
                        points: _polylinePoints,
                        strokeWidth: 4.0,
                        color: Colors.blue,
                      ),
                    ],
                  ),
              ],
            ),
          ),
          if (_navigationSteps.isNotEmpty)
            Container(
              height: 200,
              child: Column(
                children: [
                  Text(
                      'Total Distance: ${_totalDistance.toStringAsFixed(2)} km'),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _navigationSteps.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                              '${_navigationSteps[index]['instruction']} (${_navigationSteps[index]['distance']} km)'),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class LocationProvider with ChangeNotifier {
  Position? _currentPosition;

  Position? get currentPosition => _currentPosition;

  Future<void> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    _currentPosition = await Geolocator.getCurrentPosition();
    notifyListeners();
  }
}
