import 'package:flutter/material.dart';

class TransitionExamplePage extends StatelessWidget {
  const TransitionExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transition Example')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Logika untuk menampilkan animasi transisi sederhana
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text("Transition Clicked"),
                content: Text("Hello World!"),
              ),
            );
          },
          child: Hero(
            tag: 'hello-tag',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: const Icon(Icons.ads_click, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
