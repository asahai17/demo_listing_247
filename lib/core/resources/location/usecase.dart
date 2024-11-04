import 'package:demo_listing/domain/entities/list_entity.dart';

import 'data_state.dart';

abstract class UseCase<Type, Params> {
  Future<ListingEntity> call({Params params});
}