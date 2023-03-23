import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({super.key});

  @override
  ListingPageState createState() => ListingPageState();
}

class ListingPageState extends State<ListingPage> {
  final _formKey = GlobalKey<FormState>();
  final _quantityController = TextEditingController();
  final _qualityController = TextEditingController();
  final _priceController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  void dispose() {
    _quantityController.dispose();
    _qualityController.dispose();
    _priceController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Your Cereal'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue[900],
        iconTheme: IconThemeData(color: Colors.blue[900]),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _quantityController,
                  decoration: const InputDecoration(
                    labelText: 'Quantity',
                    hintText: 'Enter the quantity of your cereal',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value !.isEmpty) {
                      return 'Please enter the quantity of your cereal';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _qualityController,
                  decoration: const InputDecoration(
                    labelText: 'Quality',
                    hintText: 'Enter the quality of your cereal',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value !.isEmpty) {
                      return 'Please enter the quality of your cereal';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _priceController,
                  decoration: const InputDecoration(
                    labelText: 'Price',
                    hintText: 'Enter the price of your cereal',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value !.isEmpty) {
                      return 'Please enter the price of your cereal';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(
                    labelText: 'Location',
                    hintText: 'Enter the location of your cereal',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value !.isEmpty) {
                      return 'Please enter the location of your cereal';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: Implement logic to submit the cereal listing
                      if (kDebugMode) {
                        print('Cereal listing submitted');
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
