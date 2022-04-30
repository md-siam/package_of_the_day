import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyFlutterHooks extends HookWidget {
  const MyFlutterHooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Hooks')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name Here',
                  hintText: 'Enter Name Here',
                ),
                controller: usernameController,
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password Here',
                  hintText: 'Enter Password Here',
                ),
                controller: passwordController,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  final usr = usernameController.text;
                  final pwd = passwordController.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Logged in with $usr and $pwd'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
