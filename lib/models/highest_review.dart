// ignore_for_file: public_member_api_docs, sort_constructors_first
class DoctorModel1 {
  final String name;
  final String position;
  final int averageReview;
  final int totalReviews;
  final String profile;
  final String location;
  DoctorModel1({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReviews,
    required this.profile,
    required this.location,
  });
}

final List<DoctorModel1> nearbyDoctors = [
  DoctorModel1(
    name: "Samuel Ochieng",
    position: "Maize Farmer",
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/doctor_1.jpg",
    location: "Kesses",
  ),
  DoctorModel1(
    name: "Yonah Oketch",
    position: "Maize Farmer",
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/doctor_2.jpg",
    location: "Cattle Dip",
  ),
  DoctorModel1(
    name: "Shadrack Bii",
    position: "Maize Farmer",
    averageReview: 2,
    totalReviews: 0,
    profile: "assets/doctor_3.jpg",
    location: "Moi University",
  ),
  DoctorModel1(
    name: "Danton Onyango",
    position: "Maize Farmer",
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/doctor_1.jpg",
    location: "Kesses",
  ),

  DoctorModel1(
    name: "Vivian Koech",
    position: "Maize Farmer",
    averageReview: 2,
    totalReviews: 0,
    profile: "assets/doctor_3.jpg",
    location: "Moi University",
  ),
  DoctorModel1(
    name: "Lilian Grace",
    position: "Maize Farmer",
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/doctor_1.jpg",
    location: "Kesses",
  ),
];
