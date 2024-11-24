import 'package:get_it/get_it.dart';
import 'package:spotify/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify/data/source/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth.dart';
import 'package:spotify/domain/usecases/auth/signin.dart';
import 'package:spotify/domain/usecases/auth/signup.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencies() async {
  s1.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  s1.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

  s1.registerSingleton<SignupUseCase>(
      SignupUseCase()
  );

  s1.registerSingleton<SigninUseCase>(
      SigninUseCase()
  );
}