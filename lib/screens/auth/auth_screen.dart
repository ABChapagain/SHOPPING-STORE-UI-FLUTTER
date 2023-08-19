import 'package:flutter/material.dart';
import 'package:shopping_store_ui/constants/constant.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Constant().colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          backgroundColor: Constant().colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 18,
                            color: Constant().colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Constant().colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          backgroundColor: Constant().colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            color: Constant().colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Constant().colors.gray3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Constant().colors.gray3,
                      ),
                    ),
                    labelText: 'Phone number',
                  ),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Constant().colors.gray3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Constant().colors.gray3,
                      ),
                    ),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Constant().colors.black,
                          ),
                          foregroundColor: MaterialStateProperty.all(
                            Constant().colors.white,
                          ),
                        ),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
