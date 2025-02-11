import 'package:equatable/equatable.dart';

abstract interface class AppFailure {
  String get message;

  @override
  String toString() {
    return message;
  }
}

class UnknownFailure extends Equatable implements AppFailure {
  const UnknownFailure({
    required this.failure,
    required this.stackTrace,
  });

  final Object failure;
  final StackTrace stackTrace;

  @override
  String get message => "Unknown failure";

  @override
  String toString() {
    return "$message \n $failure $stackTrace";
  }

  @override
  List<Object?> get props => [message, failure, stackTrace];
}

/// Обрабатываемые ошибки
sealed class NetworkFailure extends Equatable implements AppFailure {
  const NetworkFailure();

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return message;
  }
}

class NoInternetFailure extends NetworkFailure {
  const NoInternetFailure();

  @override
  String get message => "Internet Fails";
}

class ServiceUnavailableFailure extends NetworkFailure {
  const ServiceUnavailableFailure({
    required this.statusCode,
  });

  final int statusCode;

  @override
  List<Object?> get props => [message, statusCode];

  @override
  String get message => "Service unavailable";
}

class ServerFailure<ErrorJsonT> extends NetworkFailure {
  const ServerFailure({
    required this.model,
    required this.statusCode,
    required this.json,
  });

  final ErrorJsonT model;
  final Map<String, dynamic> json;
  final int statusCode;

  @override
  List<Object?> get props => [message, statusCode, model, json];

  @override
  String toString() {
    return "${super.toString()} \nmodel:\n${model.toString()}";
  }

  @override
  String get message => "Server error";
}
