
sealed class CounterState {}

final class CounterInitial extends CounterState {}
final class UpdateNameState extends CounterState {}
final class UpdateImageState extends CounterState {}
final class UpdateCountState extends CounterState {}
