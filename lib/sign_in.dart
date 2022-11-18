import 'package:api/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please Sign In',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            AppTextField(
              controller: emailcontroller,
                textFieldType: TextFieldType.EMAIL,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('E-Mail'),
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
                        'Sign In',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an acount ? ',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ).onTap(() => SignUp().launch(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
