import 'package:flutter/material.dart';
import 'package:food_app/NavigationAndAppBar/appbar.dart';
import 'package:food_app/screens/mainscreen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const Appbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Image.asset("assets/images/sign_up.png",),
                const SizedBox(height: 10,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFEEAA01), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF46200A), width: 2.0),
                    ),
                    labelText: "User Name",
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20), // Customize label color
                  ),
                ),
                const SizedBox(height: 20,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFEEAA01), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF46200A), width: 2.0),
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20), // Customize label color
                  ),
                ),

                const SizedBox(height: 20,),

                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFEEAA01), width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF46200A), width: 2.0),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEEAA01),

                  ),
                  onPressed: () {},
                  child: const Text('Sign Up',style: TextStyle(color: Color(0xFF46200A),fontSize: 20)),
                ),

                const SizedBox(height: 20,),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",style: TextStyle(fontSize: 23),),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainScreen(selectedIndex: 1),
                            ),
                          );
                        },
                        child:const Text("Sign In",style: TextStyle(fontSize: 20,color: Color(0xFFEEAA01)),),
                      ),
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
