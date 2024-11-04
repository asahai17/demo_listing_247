import 'dart:convert';

import 'package:demo_listing/data/models/listing_model.dart';
import 'package:demo_listing/domain/entities/list_entity.dart';
import 'package:dio/dio.dart';

import '../../../core/resources/location/data_state.dart';
abstract class ListingData {
  Future<ListingEntity> getList();

}
class ListingDataSource extends ListingData {
  ListingDataSource(Object object);

  @override
  Future<ListingEntity> getList() async {
    var dio = Dio();
    var response = await dio.request
    ( 'https://qa-search.adda247.com/packages/v8/listing?block3DModels=false&coursesFacets=BANKING&examCategoryTagId=2010&categoryFacets=TEST_SERIES&primaryFilter=true&sponsoredCategory=1&primaryFacetsRequired=false&pageNo=1&pageSize=200&src=and'
       ,
       options: Options(method: 'GET',),
    );
    if(response.statusCode == 200){
      final listingModel = ListingEntity.fromJson(response.data);
      return listingModel;
    }
    else{
      throw UnimplementedError();
    }
    
  }
}