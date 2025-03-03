

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project/core/networking/api_service.dart';
import 'package:project/core/networking/dio_factory.dart';
import 'package:project/features/login/data/repos/login_repo.dart';

import '../../features/login/logic/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));


}