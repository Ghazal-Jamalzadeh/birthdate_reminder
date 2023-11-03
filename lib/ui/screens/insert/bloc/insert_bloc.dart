import 'dart:async';

import 'package:birthdate_reminder/data/models/birthdate.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/repository/birthdate-repository.dart';

part 'insert_event.dart';

part 'insert_state.dart';

class InsertBloc extends Bloc<InsertEvent, InsertState> {
  IBirthdateRepository repository;

  InsertBloc(this.repository) : super(InsertInitial()) {
    on<InsertEvent>((event, emit) async {

      if (event is AddNewBirthdate) {
        await repository.addBirthdate(event.birthdate);
      } else if (event is UpdateBirthdate) {
        repository.updateBirthdate(event.birthdate);
      } else if (event is DeleteBirthdate) {
        repository.deleteBirthdate(event.birthdate);
      }

      emit(OperationDone());
    });
  }
}
