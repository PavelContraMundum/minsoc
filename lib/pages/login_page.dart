import 'package:flutter/material.dart';
import 'package:minsoc/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  // text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

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
            )
            // sign in button

            //dont have an account? Register here
          ]),
        ),
      ),
    );
  }
}
