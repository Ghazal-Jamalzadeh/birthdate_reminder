part of 'insert_bloc.dart';

abstract class InsertEvent {}

class AddNewBirthdate extends InsertEvent {
  Birthdate birthdate ;
  AddNewBirthdate(this.birthdate) ;
}

class UpdateBirthdate extends InsertEvent {
  Birthdate birthdate ;
  UpdateBirthdate(this.birthdate) ;
}

class DeleteBirthdate extends InsertEvent {
  Birthdate birthdate ;
  DeleteBirthdate(this.birthdate) ;
}




