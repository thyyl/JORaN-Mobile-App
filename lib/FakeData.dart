import 'package:joran_app/Models/ChatModel.dart';
import 'package:joran_app/Models/FeaturedCompanyModel.dart';
import 'package:joran_app/Models/JobModel.dart';
import 'package:joran_app/Models/NotificationModel.dart';
import 'package:joran_app/Models/ServiceModel.dart';
import 'package:joran_app/Models/SkillsModel.dart';
import 'package:joran_app/Models/UserModel.dart';
import 'package:joran_app/Models/UserRatingsModel.dart';

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
  dateJoined: DateTime(2021, 10, 1),
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
);

List<Service> fakeServiceDataList = [
  Service(serviceID: "123", title: "C++ Programming", category: "Computer Science", price: "50", userID: "1166"),
  Service(serviceID: "113", title: "Java Programming", category: "Computer Science", price: "100", userID: "1166"),
  Service(serviceID: "143", title: "Product Design", category: "Art", price: "50", userID: "1166"),
  Service(serviceID: "923", title: "Aerospace Engineering", category: "Physics", price: "120", userID: "1166"),
  Service(serviceID: "023", title: "Accounting Assignment", category: "Accounting", price: "50", userID: "1166"),
];

List<Skills> skillData = [
  Skills(skillID: "002",name: 'Java Programming', proficiency: 72),
  Skills(skillID: "001",name: 'C++ Programming', proficiency: 35),
  Skills(skillID: "003",name: 'Python Programming', proficiency: 100),
  Skills(skillID: "004",name: 'JavaScript Programming', proficiency: 35),
  Skills(skillID: "005",name: 'Dart Programming', proficiency: 72),
  Skills(skillID: "006",name: '.Net Programming', proficiency: 100),
];

UserRatings fakeUserRatings = UserRatings(
  successRate: 97,
  ratings: 4.8,
  servicesOffered: 567,
);

List<Job> fakeJobsList = [
  Job(
    jobID: "123",
    title: "Cloud Engineer",
    companyID: "2222",
    salary: "123",
    jobType: "Full Time",
    experience: "10",
    companyLogo: "assets/logo/google.png",
    educationLevel: "PhD",
    companyName: "Google LLC",
    companyLocation: "1600 Amphitheatre Parkway in Mountain View, California",
    jobDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
  ),
  Job(
    jobID: "12222",
    title: "Database Engineer",
    companyID: "2222",
    salary: "150",
    jobType: "Full Time",
    experience: "5",
    companyName: "Google LLC",
    companyLogo: "assets/logo/google.png",
    companyLocation: "1600 Amphitheatre Parkway in Mountain View, California",
    educationLevel: "Degree",
    jobDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
  ),
  Job(
    jobID: "2222",
    title: "Machine Learning Engineer",
    companyID: "2222",
    companyLocation: "1600 Amphitheatre Parkway in Mountain View, California",
    salary: "200",
    companyLogo: "assets/logo/google.png",
    companyName: "Google LLC",
    jobType: "Full Time",
    experience: "15",
    educationLevel: "Master",
    jobDescription: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
  ),
];

List<FeaturedCompany> fakeFeaturedCompany = [
  FeaturedCompany(
    companyID: "2222",
    name: "Google LLC",
    location: "1600 Amphitheatre Parkway in Mountain View, California",
    companyLogo: "assets/logo/google.png",
    companyBanner: "assets/pictures/ad1.jpg",
    jobList: fakeJobsList,
    isFeatured: true,
  ),
  FeaturedCompany(
    companyID: "12221",
    name: "Facebook, Inc.",
    location: "Menlo Park, California, United States",
    companyLogo: "assets/logo/facebook.png",
    companyBanner: "assets/pictures/ad1.jpg",
    jobList: [],
    isFeatured: true,
  ),

];


List<NotificationModel> fakeNotificationList = [
  NotificationModel(
    notificationID: "123",
    notificationType: "Job Application",
    associateID: "2222",
    notificationDate: DateTime.now(),
    notificationDetails: "You applied for Cloud Engineer at Facebook, Inc.",
    hasRated: false,
  ),
  NotificationModel(
    notificationID: "123",
    notificationType: "Service Application",
    associateID: "923",
    notificationDate: DateTime(2021, 10, 3),
    notificationDetails: "Rate the service offered to you as feedback to Abigail Sarah Williams.",
    hasRated: false,
  ),
];

User fakeUserData2 = User(
    userID: "11661",
    name: "William Waller",
    email: "williamwaller@gmail.com",
    password: "123212232",
    userProfilePicture: "assets/pictures/user2.jpg",
    contact: "014-3812717",
    educationLevel: "Bachelor Degree",
    specialisation: "Computer Sciences",
    bank: "Public Bank",
    bankAccount: "23485602038472",
    dateJoined: DateTime(2021, 10, 1),
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
);

User fakeUserData3 = User(
    userID: "1161",
    name: "Jennifer Keys",
    email: "jenniferkeys@gmail.com",
    password: "123212232",
    userProfilePicture: "assets/pictures/user3.jpg",
    contact: "014-3812717",
    educationLevel: "Bachelor Degree",
    specialisation: "Computer Sciences",
    bank: "Public Bank",
    bankAccount: "23485602038472",
    dateJoined: DateTime(2021, 10, 1),
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
);

List<ChatRoom> fakeChatRooms = [
  ChatRoom(
    chatRoomID: "0012",
    chatParticipants: [fakeUserData, fakeUserData2],
    newMessages: 2,
  ),
  ChatRoom(
      chatRoomID: "11111",
      chatParticipants: [fakeUserData, fakeUserData3],
      newMessages: 0,
  ),
] ;


List<Chat> fakeChatList = [
  Chat(
    chatID: "001",
    chatRoomID: "0012",
    text: "Hello there",
    sender: fakeUserData.userID,
    dateTime: DateTime.now(),
  ),
  Chat(
    chatID: "011",
    chatRoomID: "0012",
    text: "Hello how are you",
    sender: fakeUserData2.userID,
    dateTime: DateTime.now(),
  ),
  Chat(
    chatID: "001",
    chatRoomID: "11111",
    text: "Hello there!",
    sender: fakeUserData.userID,
    dateTime: DateTime.now(),
  ),
  Chat(
    chatID: "011",
    chatRoomID: "11111",
    text: "Hello how are you?",
    sender: fakeUserData3.userID,
    dateTime: DateTime.now(),
  ),
];



