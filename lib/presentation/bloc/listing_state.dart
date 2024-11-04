import 'package:demo_listing/data/models/listing_model.dart';
import 'package:demo_listing/domain/entities/list_entity.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../core/resources/location/data_state.dart';

abstract class ListingState extends Equatable {
  final ListingEntity? list;
  final String? error;
  
  const ListingState({this.list, this.error});

  @override
  List<Object> get props => [list!, error!];
}

class ListingLoading extends ListingState{
  
  const ListingLoading();
}
class ListingSuccess extends ListingState{
  // final ListingModel data;
  const ListingSuccess({required ListingEntity list}) : super(list: list);
}
class ListingError extends ListingState{
  const ListingError({required String error}): super(error: error);

}