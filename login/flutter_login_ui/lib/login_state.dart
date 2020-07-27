import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginState extends Equatable{
  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState{}

class LoginSuccess extends LoginState{}

class LoginFailure extends LoginState{
  final String error;

  LoginFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure $error';

}

class LoginInProgress extends LoginState{}
