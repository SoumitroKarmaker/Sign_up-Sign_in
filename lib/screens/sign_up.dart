import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sign Up', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Name'),
                      hintText: 'Tony Stark',
                    )),
                SizedBox(height: 10,),
                AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('E-mail'),
                      hintText: 'tonystark@gmail.com',
                    )),
                SizedBox(height: 10,),
                AppTextField(
                    textFieldType: TextFieldType.NUMBER,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Phone'),
                    )),
                SizedBox(height: 10,),
                AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Password'),
                    )),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Sign Up', style: TextStyle(fontSize: 17),),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Allready Sign up ? ',style: TextStyle(color: Colors.grey, fontSize: 15),),
                    SizedBox(width: 10,),
                    Text('Sign In',
                      style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),
                    ).onTap(() => SignIn().launch(context)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
