
import 'package:birthdate_reminder/data/models/birthdate.dart';
import 'package:hive/hive.dart';

abstract class IBirthdateDataSource {
  Future<void> addBirthdate(Birthdate data);
  void updateBirthdate(Birthdate data);
  void deleteBirthdate(Birthdate data);
  List<Birthdate> getAll() ;
}

class BirthdateDataSource implements IBirthdateDataSource {

  final Box<Birthdate> box;

  BirthdateDataSource(this.box) ;

  @override
  Future<void> addBirthdate(Birthdate data) async {
    await box.add(data) ;
  }

  @override
  void deleteBirthdate(Birthdate data) {
    data.delete() ;
  }

  @override
  void updateBirthdate(Birthdate data) {
    if(data.isInBox){
    data.save() ;
    }
  }

  @override
  List<Birthdate> getAll() {
    return box.values.toList().reversed.toList();
  }



}