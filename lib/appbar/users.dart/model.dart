class FarmerInfo {
  final String? id;
  final String farmerName;
  final int maizeBags;
  final String county;
  final String contactInfo;

  FarmerInfo(
      {this.id,
      required this.farmerName,
      required this.maizeBags,
      required this.county,
      required this.contactInfo});

  toJson() {
    return {
      "farmerName": farmerName,
      "maizeBags": maizeBags,
      "county": county,
      "contactInfo": contactInfo,
    };
  }
}
