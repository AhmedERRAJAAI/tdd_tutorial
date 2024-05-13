import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.statuscode});

  final String message;
  final int statuscode;

  @override
  List<Object> get props => [
        message,
        statuscode
      ];
}

class ApiFailure extends Failure{
  const ApiFailure({required super.message, required super.statuscode});
}
