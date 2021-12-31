import 'package:data_kependudkan/screen/input_new_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class InputLogin extends StatefulWidget {
  const InputLogin({Key? key}) : super(key: key);

  @override
  _InputLoginState createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  bool isHiddenPassword = true;
  get border => null;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() {
    if (email.text == 'arjunasaputra@gmail.com' &&
        password.text == 'percobaan123') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return InputNewData();
        }),
      );
    } else {
      SnackBar tulisan =
          SnackBar(content: Text('email atau password anda salah'));
      ScaffoldMessenger.of(context).showSnackBar(tulisan);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(70, 50, 0, 0),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
                hintStyle: Theme.of(context).textTheme.bodyText2,
                filled: true,
                fillColor: Color(0xffC0D6D1),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: password,
              obscureText: isHiddenPassword,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xff377765),
                      ),
                    )),
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                hintStyle: Theme.of(context).textTheme.bodyText2,
                filled: true,
                fillColor: Color(0xffC0D6D1),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: login,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.center,
              child: Text('Forgot Password??'),
            )
          ]),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
