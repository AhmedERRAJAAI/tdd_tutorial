import 'package:tdd_tutorial/src/authentication/domain/entities/user.dart';
import 'package:tdd_tutorial/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  Future<Either<Failure, void>> createUser({
    required String createdAt,
    required String name,
    required String avatar,
  });

  Future<List<User>> getUsers();
}
