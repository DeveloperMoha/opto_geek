import 'package:opto_geek/domain/entity/accurity_entity.dart';

abstract class BaseAccurityTestsRepository {
  AccurityResultModel getAccurityItems(AccurityModel accurityModel);
}
