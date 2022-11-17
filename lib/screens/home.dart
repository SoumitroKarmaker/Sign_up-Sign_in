import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign up', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
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
                          child: Text('Sign up', style: TextStyle(fontSize: 17),),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Allready Sign up ? ',style: TextStyle(color: Colors.grey, fontSize: 15),),
                    Text('Sign in',style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
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
