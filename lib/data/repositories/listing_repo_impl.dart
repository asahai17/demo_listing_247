import 'package:demo_listing/core/resources/location/data_state.dart';
import 'package:demo_listing/data/data_sources/remote/listing_data_source.dart';
import 'package:demo_listing/data/models/listing_model.dart';
import 'package:demo_listing/domain/entities/list_entity.dart';
import 'package:demo_listing/domain/repositories/listing_repo.dart';
import 'package:flutter/widgets.dart';

class ListingRepoImpl extends ListingRepo {
  final ListingDataSource _listingDataSource;
  ListingRepoImpl(this._listingDataSource, Object object);

  @override
  Future<ListingEntity> getList() async{
    try{
      var res = await _listingDataSource.getList();
      return res;
    } 
    catch(error ){
      rethrow;
    }
    }
  }