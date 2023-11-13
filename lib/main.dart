import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdScreen(),
    ),
  );
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //this container can provide background color control
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
          ),
          Container(
          height: double.infinity,
          alignment:Alignment.topCenter,
          margin: const EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(vertical: 120),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Image.asset(
                  'assets/logo3.jpg',
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'S I M P L E',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[50],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextField(
                  keyboardType: TextInputType.name,
                  autocorrect: false,
                  enableSuggestions: false,
                  obscureText: true,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[50],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(width: 2, color: Colors.grey),
                      ),
                      hintText: 'passphrase',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                //padding: EdgeInsets.only(top: 30),
                child: SizedBox(
                  height: 60,
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[300],
                      foregroundColor: Colors.white,
                      elevation: 5,
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Reset your passphrase?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
