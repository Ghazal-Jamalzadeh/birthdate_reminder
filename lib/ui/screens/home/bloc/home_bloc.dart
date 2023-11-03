import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/models/birthdate.dart';
import '../../../../data/repository/birthdate-repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  IBirthdateRepository repository ;

  HomeBloc(this.repository) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {

      if(event is HomeGetAll){
        emit(HomeLoaded(repository.getAll())) ;
      }

    });
  }
}
