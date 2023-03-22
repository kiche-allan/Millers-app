import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  FilterPageState createState() => FilterPageState();
}

class FilterPageState extends State<FilterPage> {
  bool _isHighQualitySelected = false;
  bool _isLowQualitySelected = false;
  bool _isHighPriceSelected = false;
  bool _isLowPriceSelected = false;
  double _selectedDistance = 10.0;
  RangeValues _selectedPriceRange = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Filter"),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Quality",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      CheckboxListTile(
                        title: const Text("High"),
                        value: _isHighQualitySelected,
                        onChanged: (value) {
                          setState(() {
                            _isHighQualitySelected = value!;
                            if (value) {
                              _isLowQualitySelected = false;
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text("Low"),
                        value: _isLowQualitySelected,
                        onChanged: (value) {
                          setState(() {
                            _isLowQualitySelected = value!;
                            if (value) {
                              _isHighQualitySelected = false;
                            }
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      CheckboxListTile(
                        title: const Text("High"),
                        value: _isHighPriceSelected,
                        onChanged: (value) {
                          setState(() {
                            _isHighPriceSelected = value!;
                            if (value) {
                              _isLowPriceSelected = false;
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text("Low"),
                        value: _isLowPriceSelected,
                        onChanged: (value) {
                          setState(() {
                            _isLowPriceSelected = value!;
                            if (value) {
                              _isHighPriceSelected = false;
                            }
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Distance (km)",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        value: _selectedDistance,
                        min: 0.0,
                        max: 50.0,
                        divisions: 10,
                        label: _selectedDistance.toString(),
                        onChanged: (double value) {
                          setState(() {
                            _selectedDistance = value;
                          });
                        },
                      ),
                      Text(
                        "Selected distance: ${_selectedDistance.toString()} km",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Price Range",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      RangeSlider(
                          values: _selectedPriceRange,
                          min: 0,
                          max: 200,
                          divisions: 20,
                          labels: RangeLabels(
                            _selectedPriceRange.start.round().toString(),
                            _selectedPriceRange.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _selectedPriceRange = values;
                            });
                          })
                    ]))));
  }
}
