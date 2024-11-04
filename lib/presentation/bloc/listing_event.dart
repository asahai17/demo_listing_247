import 'package:demo_listing/domain/entities/list_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ListingEvent {
  const ListingEvent();
}
class FetchList extends ListingEvent{
  const FetchList();
}