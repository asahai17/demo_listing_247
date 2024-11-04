import 'package:demo_listing/core/resources/location/data_state.dart';
import 'package:demo_listing/domain/entities/list_entity.dart';
import 'package:demo_listing/domain/usecase/listing_usecase.dart';
import 'package:demo_listing/presentation/bloc/listing_event.dart';
import 'package:demo_listing/presentation/bloc/listing_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListingBloc extends Bloc<ListingEvent,ListingState> {

  final ListingUsecase _listingUsecase;
  ListingBloc(this._listingUsecase) : super(ListingLoading()) {
    on<FetchList>(getList);
  }

  Future<void> getList(event, emit) async {
    
    ListingEntity result = await _listingUsecase.call();
    if(result.success != true){
      emit(ListingError(error: result.response.toString()));
    } 
    
      emit(ListingSuccess(list: result)); 
    
    
  }
}