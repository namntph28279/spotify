import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/models/auth/sigin_user_req.dart';
import 'package:spotify/data/source/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {

  @override
  Future<Either> signin(SigninUserReq signinUserReq) async{
    return await s1<AuthFirebaseService>().signin(signinUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async{
    return await s1<AuthFirebaseService>().signup(createUserReq);
  }

}