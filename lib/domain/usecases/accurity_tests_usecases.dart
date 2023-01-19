// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:opto_geek/domain/repository/accurity_repository.dart';

import '../entity/accurity_entity.dart';

class AccurityTestsUseCase {
  BaseAccurityTestsRepository baseAccurityTestsRepository;
  AccurityTestsUseCase({
    required this.baseAccurityTestsRepository,
  });

  AccurityResultModel executeAccurityItems(AccurityModel accurityModel) {
    return baseAccurityTestsRepository.getAccurityItems(accurityModel);
  }
}
