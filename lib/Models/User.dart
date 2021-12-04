import 'package:joran_app/Models/DetailsModel.dart';
import 'package:joran_app/Models/SkillsModel.dart';

class User {
  String id;
  String name;
  String email;
  String pin;
  String created_at;
  String picture_url;
  Details details;
  String plan;
  Skills skills;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.pin,
    required this.created_at,
    required this.picture_url,
    required this.details,
    required this.plan,
    required this.skills,
  });
}