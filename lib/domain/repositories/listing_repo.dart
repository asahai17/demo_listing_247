import 'package:demo_listing/domain/entities/list_entity.dart';
import '../../core/resources/location/data_state.dart';

abstract class ListingRepo {
  Future<ListingEntity> getList();
  
}