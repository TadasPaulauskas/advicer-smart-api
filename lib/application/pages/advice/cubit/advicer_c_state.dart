part of 'advicer_c_cubit.dart';

abstract class AdvicerCState extends Equatable {
  const AdvicerCState();

  @override
  List<Object?> get props => [];
}

class AdvicerInitial extends AdvicerCState {}

class AdvicerStateLoading extends AdvicerCState {}

class AdvicerStateLoaded extends AdvicerCState {
  final String advice;
  const AdvicerStateLoaded({required this.advice});

  @override
  List<Object?> get props => [advice];
}

class AdvicerStateError extends AdvicerCState {
  final String message;
  const AdvicerStateError({required this.message});

  @override
  List<Object?> get props => [message];
}
