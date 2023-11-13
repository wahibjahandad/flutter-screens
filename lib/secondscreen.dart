import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: SecondScreen(),
    ),
  );
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
            color: Colors.blue,
            child: Text(
              'Sample App',
            )),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
            height: double.infinity,
            margin: const EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50)),
                        Text(
                          'TutorialKart',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 100,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    autocorrect: false,
                    enableSuggestions: false,
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 50,
                    width: 500,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        elevation: 5,
                      ),
                      child: Text(
                        "Login",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Does not have an account?',
                        style: TextStyle(fontWeight: FontWeight.normal, fontSize:14),
                        children: [
                          TextSpan(text: ' Sign in', style: TextStyle(fontWeight: FontWeight.bold, fontSize:20, color: Colors.lightBlue)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
