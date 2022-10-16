import 'package:equatable/equatable.dart';

class customError extends Equatable {
  final String code;
  final String message;
  final String plugin;
  customError({
    this.code = '',
    this.message = '',
    this.plugin = '',
  });

  @override
  List<Object> get props => [code, message, plugin];
  
  @override
  bool get stringify => true;
}
