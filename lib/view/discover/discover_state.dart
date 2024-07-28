part of 'discover_cubit.dart';

@immutable
abstract class DiscoverState {}
//todo understanding

final class DiscoverInitial extends DiscoverState {
  DiscoverInitial();
}

final class DiscoverLoading extends DiscoverState {
  DiscoverLoading();
}

final class DiscoverCompleted extends DiscoverState {
  final List<Items>? items;
  DiscoverCompleted({required this.items});
}

final class DiscoverError extends DiscoverState {
  final String message;
  DiscoverError({required this.message});
}
