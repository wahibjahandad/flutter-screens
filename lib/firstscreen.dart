import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //execute: flutter pub add google_fonts

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false, home: MyApp()), // use MaterialApp
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 6),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstScreen2()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(225, 220, 0, 0),
          ),
          Container(
            height: double.infinity,
            margin: const EdgeInsets.all(20),
            color: Color.fromARGB(225, 220, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                  vertical: 130,
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/logo1.PNG',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      //width: double.infinity,
                      width: 300,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Code  Info',
                          // style: TextStyle(
                          //   color: Colors.white,
                          //   fontFamily: 'Arial',
                          //   //fontSize: 28,
                          //   fontWeight: FontWeight.bold,
                          // ),
                          // use following if using google import and app should run on internet
                          style: GoogleFonts.notoSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      //width: 200,
                      height: 22,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'start your online journey',
                          style: TextStyle(
                            color: Colors.white70,
                            //fontFamily: 'OpenSans',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class FirstScreen1 extends StatelessWidget {
//   const FirstScreen1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => FirstScreen2()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// splashScreen(true) async {
//   return await splashScreen();
// }

class FirstScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
            height: double.infinity,
            margin: const EdgeInsets.all(20),
            color: Colors.white,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Text(
                            'Back',
                            style: TextStyle(
                              color: Colors.black54,
                              //fontFamily: 'OpenSans',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //  Text('data'),
                      Image.asset(
                        'assets/logo2.PNG',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                      ),
                      // Container(
                      //   alignment: Alignment.centerLeft,
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.rectangle,
                      //     image: DecorationImage(
                      //       image: AssetImage('assets/logo1.PNG'),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Proceed with your Account',
                        style: TextStyle(
                          color: Colors.black45,
                          //fontFamily: 'OpenSans',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        // style: TextStyle(
                        //   color: Colors.black,
                        //   //fontFamily: 'Arial',
                        //   fontSize: 28,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        // use following if using google import
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                          color: Colors.black,
                          //fontFamily: 'Arial',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Username',
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 50, 50),
                            //fontFamily: 'Arial',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    padding: EdgeInsets.all(20),
                    child: const TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 50, 50),
                            //fontFamily: 'Arial',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    padding: EdgeInsets.all(20),
                    child: const TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      height: 50,
                      width: 400,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          elevation: 5,
                        ),
                        child: Text(
                          "Login",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
