import 'package:flutter/material.dart';
import 'pages/implicit_animation_page.dart';
import 'pages/explicit_animation_page.dart';
import 'pages/interactive_animation_page.dart';
import 'pages/transition_example_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Animation Demo')),
        body: Builder(
          builder: (context) {
            return ListView(
              children: [
                _buildTile(
                  context,
                  'Implicit Animation',
                  const ImplicitAnimationPage(),
                ),
                _buildTile(
                  context,
                  'Explicit Animation',
                  const ExplicitAnimationPage(),
                ),
                _buildTile(
                  context,
                  'Interactive Animation',
                  const InteractiveAnimationPage(),
                ),
                _buildTile(
                  context,
                  'Transition Example',
                  const TransitionExamplePage(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  ListTile _buildTile(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
    );
  }
}
