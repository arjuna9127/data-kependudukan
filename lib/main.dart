import 'package:data_kependudkan/screen/input_login.dart';
import 'package:data_kependudkan/screen/input_new_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kependudukan',
      theme: ThemeData(
        textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xffC0D6D1))),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 15)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Color(0xff377765)))),
        primaryColor: const Color(0xff5B9183),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xff5B9183),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: const InputLogin(),
    );
  }
}
