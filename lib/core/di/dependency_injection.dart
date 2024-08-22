import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shagra_club_app/core/networking/api_service.dart';
import 'package:shagra_club_app/core/networking/dio_factory.dart';
import 'package:shagra_club_app/features/login/data/repo/login_repo.dart';
import 'package:shagra_club_app/features/login/logic/cubit/login_cubit.dart';
import 'package:shagra_club_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:shagra_club_app/features/signup/logic/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Services
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(dio),
  );

  // Login
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(
      getIt(),
    ),
  );

  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(
      getIt(),
    ),
  );

//   SignUp

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
