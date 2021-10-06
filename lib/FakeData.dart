import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Models/SkillsModel.dart';
import 'package:joran_app/Models/UserModel.dart';

User fakeUserData = User(
  userID: "1166",
  name: "Abigail Sarah Williams",
  email: "abigailsarahwilliams@gmail.com",
  password: "123212232",
  userProfilePicture: "assets/pictures/user.jpg",
  contact: "014-3802717",
  educationLevel: "Bachelor Degree",
  specialisation: "Computer Sciences",
  bank: "Public Bank",
  bankAccount: "23485602038472",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
);

List<Service> fakeServiceDataList = [
  Service(serviceID: "123", title: "C++ Programming", category: "Computer Science", price: "50"),
  Service(serviceID: "113", title: "Java Programming", category: "Computer Science", price: "100"),
  Service(serviceID: "143", title: "Product Design", category: "Art", price: "50"),
  Service(serviceID: "923", title: "Aerospace Engineering", category: "Physics", price: "120"),
  Service(serviceID: "023", title: "Accounting Assignment", category: "Accounting", price: "50"),
];

List<Skills> skillData = [
  Skills(skillID: "002",name: 'Java Programming', proficiency: 72),
  Skills(skillID: "001",name: 'C++ Programming', proficiency: 35),
  Skills(skillID: "003",name: 'Python Programming', proficiency: 100),
  Skills(skillID: "004",name: 'JavaScript Programming', proficiency: 35),
  Skills(skillID: "005",name: 'Dart Programming', proficiency: 72),
  Skills(skillID: "006",name: '.Net Programming', proficiency: 100),
];