// ignore_for_file: public_member_api_docs, sort_constructors_first
class RiceModel {
final String name;
final String position;
final int averageReview;
final int totalReviews;
final String profile;
final String location;
RiceModel({
required this.name,
required this.position,
required this.averageReview,
required this.totalReviews,
required this.profile,
required this.location,
});
}

final List<RiceModel> nearbyFarmers = [
RiceModel(
name: "Samuel Ochieng",
position: "Maize Farmer",
averageReview: 0,
totalReviews: 0,
profile: "assets/doctor_1.jpg",
location: "Kesses",
),
RiceModel(
name: "Yonah Oketch",
position: "Maize Farmer",
averageReview: 0,
totalReviews: 0,
profile: "assets/doctor_2.jpg",
location: "Cattle Dip",
),
RiceModel(
name: "Shadrack Bii",
position: "Maize Farmer",
averageReview: 2,
totalReviews: 0,
profile: "assets/doctor_3.jpg",
location: "Moi University",
),
RiceModel(
name: "Danton Onyango",
position: "Maize Farmer",
averageReview: 0,
totalReviews: 0,
profile: "assets/doctor_1.jpg",
location: "Kesses",
),

RiceModel(
name: "Vivian Koech",
position: "Maize Farmer",
averageReview: 2,
totalReviews: 0,
profile: "assets/doctor_3.jpg",
location: "Moi University",
),
RiceModel(
name: "Lilian Grace",
position: "Maize Farmer",
averageReview: 0,
totalReviews: 0,
profile: "assets/doctor_1.jpg",
location: "Kesses",
),
];