part of "meme_bloc.dart";

sealed class MemeEvent {}

class MemeEventStarted extends MemeEvent {}

class MemeEventFilter extends MemeEvent {
  final String filter;

  MemeEventFilter(this.filter);
}
