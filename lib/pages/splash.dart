import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 200, 50, 0),
            child: Column(
              children: [
                const Icon(
                  Icons.list_alt,
                  size: 150,
                ),
                const Text(
                  "TodoList",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                  onPressed: (){
                    
                  }, 
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.black87,
                  ),
                  child: const Text("Start"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}