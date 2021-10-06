class Skills{
  String skillID;
  String name;
  double proficiency;

  Skills({
    required this.skillID,
    required this.name,
    required this.proficiency,
  });

  factory Skills.fromJson(Map<String, dynamic> responseData){
    return Skills(
      skillID: responseData['skillID'],
      name: responseData['name'],
      proficiency: responseData['proficiency'],
    );
  }
}