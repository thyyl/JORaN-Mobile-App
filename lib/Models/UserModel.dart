class User {
  String userID;
  String name;
  String email;
  String password;
  String userProfilePicture;
  String contact;
  String educationLevel;
  String specialisation;
  String bank;
  String bankAccount;
  String description;
  DateTime dateJoined;

  User({
    required this.userID,
    required this.name,
    required this.email,
    required this.password,
    required this.userProfilePicture,
    required this.contact,
    required this.educationLevel,
    required this.specialisation,
    required this.bank,
    required this.bankAccount,
    required this.description,
    required this.dateJoined,
  });

  factory User.fromJson(Map<String, dynamic> responseData){
    return User(
      userID: responseData['userID'],
      name: responseData['name'],
      email : responseData['email'],
      password: responseData['password'],
      userProfilePicture: responseData['userProfilePicture'],
      contact : responseData['contact'],
      educationLevel: responseData['educationLevel'],
      specialisation : responseData['specialisation'],
      bank: responseData['bank'],
      bankAccount : responseData['bankAccount'],
      description: responseData['description'],
      dateJoined: responseData['dateJoined']
    );
  }
}