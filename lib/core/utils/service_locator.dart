import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
// note please dont make cubit by get it becouse it dont colse ever
final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      /*   ApiService(
        Dio(),
      ), */
      getIt.get<ApiService>(),
    ),


  );
}
