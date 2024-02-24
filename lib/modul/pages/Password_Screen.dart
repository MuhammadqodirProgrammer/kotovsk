import 'package:flutter/material.dart';
import 'package:kotovsk/modul/pages/Edit_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(PasswordPage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PasswordPage(),
    );
  }
}

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  String _password = '';
  final String _correctPassword = '1234';
  bool isValidPas = false;
  int  try_count = 3;
  List<String> words1 = ["А","Б", "В","Г","Д" ];
  List<String> words2 = ["Е","Ж", "З","И","К" ];

  void _checkFunc() {
    setState(() {
      if (_password == _correctPassword &&
          _password.length == _correctPassword.length) {
        // Navigate to the next screen (e.g., Home page)

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => EditPage()),
        );
      } else if (_password.length >= _correctPassword.length &&
          _password != _correctPassword) {
        // Show "Incorrect Password" message
        _password = "";
        isValidPas =true;
        try_count -=1;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Неверно! Попробуйте еще раз, у вас осталось $try_count попыток.'),
            backgroundColor: Colors.red,
          ), // "Неверно!" means "Incorrect!"
        );
      } else {isValidPas =false;}
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 69, 37),
    title: Text(
    'Вход в админ панель',
    style: GoogleFonts.philosopher(
    textStyle: TextStyle(
    height: 15,
    fontSize: 45,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
    color: Colors.white,
    ),
    ),
    ),
    ),
    backgroundColor: Color.fromRGBO(9, 69, 37, 1), // Dark green background
    body: SingleChildScrollView(
    child: Center(
    child: AbsorbPointer(
    absorbing: try_count ==0 ?true : false ,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(height: 20.0),
    Text(
    try_count ==0 ?"У вас закончились попытки, я полагаю, вы не администратор?" : isValidPas ? ("Неверно!") : _password


    ,
    style: TextStyle(
    fontSize: isValidPas ? 40 : 34, color: Colors.white),
    ),
    SizedBox(height: 20.0),
    Container(
    width: 300, // Adjust width as needed
    child: TextField(
    onChanged: (value) {
    setState(() {
    _password = value;
    });
    },
    keyboardType: TextInputType.text,
    obscureText: true,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
    hintText: 'Введите пароль',
    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    ),
    ),
    textInputAction: TextInputAction.done,
    maxLines: 1,
    ),
    ),
    SizedBox(height: 20.0),
    const Text(
    'Введите пароль:',
    style: TextStyle(fontSize: 20.0, color: Colors.white),
    ),
    // ElevatedButton(
    //   onPressed: () {
    //     // Validate the entered password (add your logic here)
    //     if (_password == 'admin123') {
    //       // Navigate to the next screen (e.g., Home page)
    //       Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(builder: (context) => EditPage()),
    //       );
    //     }
    //     else {
    //       // Show "Incorrect Password" message
    //       ScaffoldMessenger.of(context).showSnackBar(
    //         SnackBar(
    //             content:
    //             Text('Неверно!')), // "Неверно!" means "Incorrect!"
    //       );
    //     }
    //   },
    //   child: Text('Войти'), // "Login" in Russian
    // ),
    const SizedBox(height: 37),
    SizedBox(
    width: 648,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    ...List.generate(
    5,
    (index) => Ink(
    height: 88,
    width: 100,


    decoration: BoxDecoration(
    color: const Color(0xFF2D5939),
    border: Border.all(
    width: 5,
    color: const Color(0xFFDBBB69),
    ),
    borderRadius: BorderRadius.circular(10),
    ),
    child: InkWell(
    borderRadius: BorderRadius.circular(6),
    onTap: () {
    setState(() {
    _password += "${index + 1}";
    _checkFunc();
    });
    },
    focusColor: const Color(0xFFF6FDC7),
    splashColor: const Color(0xFFF6FDC7),
    hoverColor: const Color(0xFF1e4829),
    child: Center(
    child: Text(
    "${index + 1}",
    style: const TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 38,
    ),
    ),
    ),
    ),
    )),
    ],
    ),
    ),
    const SizedBox(height: 37),
    SizedBox(
    width: 648,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    ...List.generate(
    5,
    (index) => Ink(
    height: 88,
    width: 100,
    decoration: BoxDecoration(
    color: const Color(0xFF2D5939),
    border: Border.all(
    width: 5,
    color: const Color(0xFFDBBB69),
    ),
    borderRadius: BorderRadius.circular(10),
    ),
    child: InkWell(
    borderRadius: BorderRadius.circular(6),
    onTap: () {
    setState(() {
    _password += "${index + 5}";
    _checkFunc();
    });
    },
    focusColor: const Color(0xFFF6FDC7),
    splashColor: const Color(0xFFF6FDC7),
    hoverColor: const Color(0xFF1e4829),
    child: Center(
    child: Text(
    "${index + 5}",
    style: const TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 38,
    ),
    ),
    ),
    ),
    )),
    ],
    ),
    ),


      const SizedBox(height: 37),
      SizedBox(
        width: 648,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
                5,
                    (index) => Ink(
                  height: 88,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D5939),
                    border: Border.all(
                      width: 5,
                      color: const Color(0xFFDBBB69),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(6),
                    onTap: () {
                      setState(() {
                        _password += "${words1[index]}";
                        _checkFunc();
                      });
                    },
                    focusColor: const Color(0xFFF6FDC7),
                    splashColor: const Color(0xFFF6FDC7),
                    hoverColor: const Color(0xFF1e4829),
                    child: Center(
                      child: Text(
                        "${words1[index]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 38,
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),

      const SizedBox(height: 37),
      SizedBox(
        width: 648,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
                5,
                    (index) => Ink(
                  height: 88,
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D5939),
                    border: Border.all(
                      width: 5,
                      color: const Color(0xFFDBBB69),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(6),
                    onTap: () {
                      setState(() {
                        _password += "${words2[index]}";
                        _checkFunc();
                      });
                    },
                    focusColor: const Color(0xFFF6FDC7),
                    splashColor: const Color(0xFFF6FDC7),
                    hoverColor: const Color(0xFF1e4829),
                    child: Center(
                      child: Text(
                        "${words2[index]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 38,
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    ],
    ),
    ),
    ),
    ),
    );
  }
}



//   words

