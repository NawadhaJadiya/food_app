import 'package:flutter/material.dart';
import 'package:food_app/Screen/home_page.dart';
import 'package:food_app/Screen/login.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          children: [
            Expanded(
                child: Divider(
              thickness: 1.5,
              color: Colors.black,
            )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Sign in with',
                  style: TextStyle(color: Colors.black, fontSize: 14)),
            ),
            Expanded(
                child: Divider(
              thickness: 1.5,
              color: Colors.black,
            )),
          ],
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                return const HomeScreen();
              }));
            },
            icon: const Icon(Icons.facebook, color: Colors.blue),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15),
              backgroundColor: Colors.white,
              side: BorderSide(color: Colors.grey.shade300),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            label: const Text(
              'Continue with Facebook  ',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return const HomeScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/googleLogo.png'),
                  ),
                  const Text(
                    'Continue with Google  ',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
        ),
        const SizedBox(height: 25),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (ctx) {
              return Login();
            }));
          },
          child: const Text(
            'Already have an account? Sign In',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
