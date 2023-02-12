import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      debugPrint('fake get advice');
      await Future.delayed(const Duration(seconds: 5), () {});
      debugPrint('got an advice');
      emit(AdvicerStateLoaded(advice: 'fake advice to test bloc'));
      emit(AdvicerStateError(message: 'Neuzkrove jokio uzraso'));
    });
  }
}
