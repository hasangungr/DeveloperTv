part of 'home_cubit.dart';

 
@immutable
abstract class HomeState {}

final class HomeInitial extends HomeState {
  HomeInitial();
}

final class HomeLoading extends HomeState {
  final bool? isLoading;
  HomeLoading(this.isLoading);
}

final class HomeCompleted extends HomeState {
  final List<MediaItem>? items;

  HomeCompleted({required this.items});
}

final class HomeError extends HomeState {
  final String message;
  HomeError({required this.message});
}
