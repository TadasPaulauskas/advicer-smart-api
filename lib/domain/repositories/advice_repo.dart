import 'package:advicer_smart_api/domain/entities/advice_enity.dart';

abstract class AdviceRepo {
  Future<AdviceEntity> getAdviceFromDataSource();
}
