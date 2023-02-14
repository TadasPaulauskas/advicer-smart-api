import '../entities/advice_enity.dart';

class AdviceUseCases {
  Future<AdviceEntity> getAdvice() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    return const AdviceEntity(
      advice: 'fake advice to test bloc',
      id: 1,
    );
  }
}
