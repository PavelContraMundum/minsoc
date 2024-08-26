import 'package:flutter/material.dart';
import 'package:minsoc/components/my_button.dart';
import 'package:minsoc/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  // text controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPwController = TextEditingController();

  RegisterPage({super.key});

  //register method

  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //logo
            Icon(
              Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
            //app name
            Text(
              "M I N I M A L",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            //username textfield
            MyTextfield(
                hintText: "Username",
                obscureText: false,
                controller: usernameController),
            const SizedBox(
              height: 10,
            ),

            //email textfield
            MyTextfield(
                hintText: "Email",
                obscureText: false,
                controller: emailController),
            const SizedBox(
              height: 10,
            ),

            // password textfield
            MyTextfield(
                hintText: "Password",
                obscureText: true,
                controller: passwordController),

            const SizedBox(
              height: 10,
            ),

            //confirm password textfield
            MyTextfield(
                hintText: "Confirm Password",
                obscureText: true,
                controller: confirmPwController),

            const SizedBox(
              height: 10,
            ),


            // forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password?",
                  style:
                  TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),


            const SizedBox(height: 25),
            // register in button
            MyButton(
                text: "Register", onTap: register),

            //dont have an account? Register here
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                )),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      " Login here",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ), )),
              ],
            )

          ]),
        ),
      ),
    );
  }
}
