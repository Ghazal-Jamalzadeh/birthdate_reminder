part of 'insert_bloc.dart';

@immutable
abstract class InsertState {}

class InsertInitial extends InsertState {}

class OperationDone extends InsertState {

  OperationDone();
}
