import 'Data.dart';

/// success : true
/// message : "User login successfully!"
/// data : {"user_id":108,"token":"591|H52lT5lgpohYSYBU8SMajtmX1o1nCg1aVKT2QYuH","name":"sk","email":"s@email.com","phone":"123456129","refer":null}

class SignIn {
  SignIn({
      bool? success, 
      String? message, 
      Data? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  SignIn.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _success;
  String? _message;
  Data? _data;

  bool? get success => _success;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}