part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeGetAll extends HomeEvent {
  HomeGetAll();
}
