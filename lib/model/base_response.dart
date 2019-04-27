import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

// flutter packages pub run build_runner build
// flutter packages pub run build_runner watch
@JsonSerializable()
class BaseResponse<T> extends Object {

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'data')
  T data;
}