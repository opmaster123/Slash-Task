part of 'home_page_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomePageContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomePageContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomePageContainer widget is first created.
class HomePageContainerInitialEvent extends HomePageContainerEvent {
  @override
  List<Object?> get props => [];
}
