import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Please Sign Up',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              AppTextField(
                controller: namecontroller,
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Name'),
                    hintText: 'Tony Stark',
                  )),
              SizedBox(
                height: 10,
              ),
              AppTextField(
                controller: emailcontroller,
                  textFieldType: TextFieldType.EMAIL,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('E-mail'),
                    hintText: 'tonystark@gmail.com',
                  )),
              SizedBox(
                height: 10,
              ),
              AppTextField(
                controller: namecontroller,
                  textFieldType: TextFieldType.NUMBER,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Phone'),
                  )),
              SizedBox(
                height: 10,
              ),
              AppTextField(
                controller: passwordcontroller,
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                  )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Allready Sign up ? ',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ).onTap(() => SignIn().launch(context)),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
