import 'package:demo_listing/core/resources/location/data_state.dart';
import 'package:demo_listing/core/resources/location/usecase.dart';
import 'package:demo_listing/domain/entities/list_entity.dart';
import 'package:demo_listing/domain/repositories/listing_repo.dart';

import '../../data/models/listing_model.dart';

class ListingUsecase implements UseCase<Future<ListingEntity>, void> {
  
  final ListingRepo _listingRepo;
  ListingUsecase(this._listingRepo);

  @override
  Future<ListingEntity> call({void params}) async{
    final listing = await _listingRepo.getList();
    return listing;
  }
   
}