import 'package:flutter/material.dart';
import 'package:mordernlogin2/components/my_button.dart';
import 'package:mordernlogin2/components/my_textfield.dart';
import 'package:mordernlogin2/components/square_tile.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in
   void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 50),

               const Icon(Icons.lock,
                size: 50,
              ),
               SizedBox(height: 50),

              const Text('WELCOME',
                style: TextStyle(color: Colors.black,
                  fontSize: 16,
                ),
              ),

               SizedBox(height: 25),


              //user name
              MyTextField(
                controller: usernameController,
                hintText:'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),


              //password
              MyTextField(
                controller: passwordController,
                hintText:'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot password ?',
                    style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in bbtn
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                children:[
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ),
                ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('continue with',
                    style: TextStyle(color: Colors.grey[700]),),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
  ],
                ),
              ),
              const SizedBox(height: 50),

              // google sms buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                 SquareTile(imagepath:'assets/glogo.png'),

                  SizedBox(width: 25),

                  SquareTile(imagepath:'assets/msg.png'),

                ],
              ),
              const SizedBox(height: 50),

              //not a member?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Not a member?',
                style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(width: 4),
                const Text(
                  'Register now',
                style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                ),
              ],)



            ],
          ),
        ),
      ),
    );
  }
}
