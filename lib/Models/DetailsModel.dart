
class Details {
  String contact;
  String education_level;
  String specialization;

  Details({
    required this.contact,
    required this.education_level,
    required this.specialization,
  });

  factory Details.fromJson(Map<String, dynamic> responseData){
    return Details(
      contact: responseData['contact'],
      education_level: responseData['education_level'],
      specialization : responseData['specialization'],
    );
  }
}