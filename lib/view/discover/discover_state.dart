part of 'discover_cubit.dart';

mixin PlayerState {
  void voidVideoPlayer(BuildContext context, String videoId);
}

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
  final List<Items>? items;

  DiscoverCompleted({required this.items});
}

final class DiscoverError extends DiscoverState {
  final String message;
  DiscoverError({required this.message});
}
