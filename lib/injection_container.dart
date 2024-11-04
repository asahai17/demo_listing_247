import 'package:demo_listing/data/repositories/listing_repo_impl.dart';
import 'package:demo_listing/domain/repositories/listing_repo.dart';
import 'package:demo_listing/domain/usecase/listing_usecase.dart';
import 'package:demo_listing/data/data_sources/remote/listing_data_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'presentation/bloc/listing_bloc.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  s1.registerSingleton<Dio>(Dio());

  s1.registerSingleton<ListingDataSource>(ListingDataSource(s1<Dio>()));

  s1.registerLazySingleton<ListingRepo>(() => ListingRepoImpl(s1<ListingDataSource>(), s1<Dio>()));

  s1.registerLazySingleton<ListingUsecase>(() => ListingUsecase(s1<ListingRepo>()));

  s1.registerFactory(() => ListingBloc(s1<ListingUsecase>()));
}
