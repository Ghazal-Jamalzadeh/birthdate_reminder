import 'package:birthdate_reminder/data/data-source/birthdate-data-source.dart';
import 'package:flutter/material.dart';

import '../models/birthdate.dart';

abstract class IBirthdateRepository {
  Future<void> addBirthdate(Birthdate data);

  void updateBirthdate(Birthdate data);

  void deleteBirthdate(Birthdate data);

  List<Birthdate> getAll();
}

class BirthdateRepository with ChangeNotifier implements IBirthdateRepository {
  IBirthdateDataSource dataSource;

  BirthdateRepository(this.dataSource);

  @override
  Future<void> addBirthdate(Birthdate data) {
    Future result = dataSource.addBirthdate(data);
    notifyListeners();
    return result;
  }

  @override
  void deleteBirthdate(Birthdate data) {
    dataSource.deleteBirthdate(data);
    notifyListeners() ;
  }

  @override
  List<Birthdate> getAll() => dataSource.getAll();

  @override
  void updateBirthdate(Birthdate data) {
    dataSource.updateBirthdate(data);
    notifyListeners() ;
  }
}
