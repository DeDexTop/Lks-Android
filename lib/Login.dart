import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   bool _isHidePassword = false;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 135,
                    height: 135,
                    child: Image.asset(''),
                  ),
                  Text(
                    'Hi \nSelamat datang!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Isi data pribadi anda',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 61, 60, 60),
                    ),
                  ),
                  SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          cursorColor: Color(0xff4E944F),
                          controller: username,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 124, 123, 123)
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff4E944F)),
                              )
                            )
                          ),
                          TextFormField(
                          cursorColor: Color(0xff4E944F),
                          obscureText: _isHidePassword,
                          autofocus: false,
                          controller: password,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 124, 123, 123)
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff4E944F)),
                              )
                            )
                          ),
                          // CircularProgressIndicator(
                          //   valueColor: AlwaysStoppedAnimation<Color>(
                          //     Color(0xff4E944F)
                          //   )
                          // ),
                           SizedBox(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 222, 222, 222),
                                onPrimary: Color.fromARGB(255, 124, 123, 123)
                                ),
                                onPressed: (){
                                  // Navigator.pushAndRemoveUntil(
                                  //   context,
                                  //   MaterialPageRoute()
                                  // )
                                },
                            child: Text(
                              'Masuk',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            )
                           ),
                           SizedBox(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color(0xff4E944F),
                                ),
                                onPressed: (){
                                  // Navigator.pushAndRemoveUntil(
                                  //   context,
                                  //   MaterialPageRoute()
                                  // )
                                },
                            child: Text(
                              'Daftar',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            )
                           )
                      ]),
                  )
                ],
              ),
            )
          ],
        ),
      );
  }
}