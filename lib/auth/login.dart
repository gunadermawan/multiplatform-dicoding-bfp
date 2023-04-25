import 'package:flutter/material.dart';

import '../home/Home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  bool _isError = false;
  bool _isEmailEmpty = false;

  void _performLogin() {
    setState(() {
      _isEmailEmpty = _emailController.text.trim().isEmpty;

      if (_isEmailEmpty) {
        _isError = true;
      } else {
        final email = _emailController.text.trim();
        // Perform simple authentication here
        _isError = false;
        // Navigate to the next screen on successful login
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return BookListScreen(
            mail: email,
          );
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 48.0),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Hi! kenalan yuk',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  errorText: _isEmailEmpty ? 'Nama kamu masih kosong :(' : null,
                ),
              ),
              const SizedBox(height: 8.0),
              if (_isError)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'nama pengguna tidak valid',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: _performLogin,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                child: const Text('mulai membaca'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
