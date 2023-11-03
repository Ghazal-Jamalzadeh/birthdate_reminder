import 'package:hive/hive.dart';
part 'birthdate.g.dart';


@HiveType(typeId : 1 )
class Birthdate extends HiveObject {
  @HiveField(0)
  int id = -1 ;
  @HiveField(1)
  String name = '';
  @HiveField(2)
  DateTime dateOfBirth = DateTime.now() ;
  @HiveField(3)
  String dateFancyString = '' ;
  @HiveField(4)
  bool sendMeNotification = false ;
  @HiveField(5)
  bool earlyNotification = false;
  @HiveField(6)
  int daysEarlier =  0 ;

  Birthdate({
    required this.id ,
    required this.name ,
    required this.dateOfBirth ,
    required this.dateFancyString ,
    this.sendMeNotification = false ,
    this.earlyNotification = false ,
    this.daysEarlier = 0
});
}