/// user_id : 108
/// token : "591|H52lT5lgpohYSYBU8SMajtmX1o1nCg1aVKT2QYuH"
/// name : "sk"
/// email : "s@email.com"
/// phone : "123456129"
/// refer : null

class Data {
  Data({
      int? userId, 
      String? token, 
      String? name, 
      String? email, 
      String? phone, 
      dynamic refer,}){
    _userId = userId;
    _token = token;
    _name = name;
    _email = email;
    _phone = phone;
    _refer = refer;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _token = json['token'];
    _name = json['name'];
    _email = json['email'];
    _phone = json['phone'];
    _refer = json['refer'];
  }
  int? _userId;
  String? _token;
  String? _name;
  String? _email;
  String? _phone;
  dynamic _refer;

  int? get userId => _userId;
  String? get token => _token;
  String? get name => _name;
  String? get email => _email;
  String? get phone => _phone;
  dynamic get refer => _refer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['token'] = _token;
    map['name'] = _name;
    map['email'] = _email;
    map['phone'] = _phone;
    map['refer'] = _refer;
    return map;
  }

}