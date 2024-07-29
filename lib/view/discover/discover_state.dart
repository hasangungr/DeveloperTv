part of 'discover_cubit.dart';


@immutable
abstract class DiscoverState {}
//todo understanding

final class DiscoverInitial extends DiscoverState {
  DiscoverInitial();
}

final class DiscoverLoading extends DiscoverState {
  final bool? isLoading;
  DiscoverLoading(this.isLoading);
}

final class DiscoverCompleted extends DiscoverState {
  final List<MediaItem>? items;

  DiscoverCompleted({required this.items});
}

final class DiscoverError extends DiscoverState {
  final String message;
  DiscoverError({required this.message});
}
