import 'package:advicer_smart_api/domain/entities/advice_enity.dart';
import 'package:advicer_smart_api/domain/useCases/advice_usecases.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_c_state.dart';

class AdvicerCCubit extends Cubit<AdvicerCState> {
  AdvicerCCubit() : super(AdvicerInitial());
  final AdviceUseCases adviceUseCases = AdviceUseCases();

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    final AdviceEntity adviceRequest = await adviceUseCases.getAdvice();
    // await Future.delayed(const Duration(seconds: 3), () {});
    emit(AdvicerStateLoaded(advice: adviceRequest.advice));
    // emit(const AdvicerStateError(message: 'Neuzkrove jokio uzraso'));
  }
}
