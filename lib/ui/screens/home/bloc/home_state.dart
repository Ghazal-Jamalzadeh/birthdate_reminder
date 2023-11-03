part of 'home_bloc.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoaded extends HomeState {
  List<Birthdate> data ;

  HomeLoaded(this.data);
}
