import 'dart:convert';

import 'package:api/model/Sign_in_model.dart';
import 'package:http/http.dart' as http;
import 'package:api/server_config.dart';

class AuthRepo{
  Future<bool> signupwithemail (String name, String email, String phone, String password )async{

    String signUpUrl = Config.serverurl + Config.signupurl;
    var response = await http.post(Uri.parse(signUpUrl), body:<String, String>{
      'name' : name,
      'email' : email,
      'phone' : phone,
      'password' : password,

    } );
    var data = jsonDecode(response.body);
    if(response.statusCode == 200){
      // print(data);
      var message = SignIn.fromJson(data);
      print(message.message);
      return true;
    }
    var message = SignIn.fromJson(data);
    print(message.message);
    return false ;
  }
  Future<bool> signinwithemail (String email, String password )async{

    String signInUrl = Config.serverurl + Config.signinurl;
    var response = await http.post(Uri.parse(signInUrl), body:<String, String>{
      'email' : email,
      'password' : password,

    } );
    var data = jsonDecode(response.body);
    if(response.statusCode == 200){
      // print(data);
      var message = SignIn.fromJson(data);
      print(message.message);
      return true;
    }
    var message = SignIn.fromJson(data);
    print(message.message);
    return false ;
  }
}