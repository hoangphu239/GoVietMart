import 'package:get_it/get_it.dart';
import 'package:hunty/data/data_sources/auth_remote_data_resource.dart';
import 'package:hunty/data/remote/remote_client.dart';
import 'package:hunty/data/repositories/auth_repository_impl.dart';
import 'package:hunty/domain/repositories/auth_repository.dart';
import 'package:hunty/domain/usecase/login_usecase.dart';
import 'package:hunty/domain/usecase/recovery_password_usecase.dart';
import 'package:hunty/domain/usecase/signup_usecase.dart';
import 'package:hunty/presentation/bloc/login/login_cubit.dart';
import 'package:hunty/presentation/bloc/recovery_password/recovery_password_cubit.dart';
import 'package:hunty/presentation/bloc/signup/signup_cubit.dart';

final getItInstance = GetIt.I;

Future init() async {
  // Remote Client
  getItInstance.registerLazySingleton<RemoteClient>(
          () => RemoteClient()
  );

  // Data Source
  getItInstance.registerLazySingleton<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(getItInstance()),
  );

  // Repository
  getItInstance.registerLazySingleton<AuthRepository>(
          () => AuthRepositoryImpl(getItInstance())
  );

  // Use Cases
  getItInstance.registerLazySingleton(
          () => LoginUseCase(getItInstance())
  );
  getItInstance.registerLazySingleton(
          () => SignupUseCase(getItInstance())
  );
  getItInstance.registerLazySingleton(
          () => RecoveryPasswordUseCase(getItInstance())
  );

  // Bloc
  getItInstance.registerFactory(
          () => LoginCubit(getItInstance())
  );
  getItInstance.registerFactory(
          () => SignupCubit(getItInstance())
  );
  getItInstance.registerFactory(
          () => RecoveryPasswordCubit(getItInstance())
  );
}
