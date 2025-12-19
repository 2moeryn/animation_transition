import 'package:flutter/material.dart';

class InteractiveAnimationPage extends StatefulWidget {
  const InteractiveAnimationPage({super.key});

  @override
  State<InteractiveAnimationPage> createState() =>
      _InteractiveAnimationPageState();
}

class _InteractiveAnimationPageState extends State<InteractiveAnimationPage>
    with SingleTickerProviderStateMixin {
  //
  late AnimationController _controller;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    ); // AnimationController

    _scaleAnim = Tween<double>(begin: 1.0, end: 1.3).animate(_controller); //
  }

  @override
  void dispose() {
    _controller.dispose(); //
    super.dispose(); //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Interactive Animation")),
      body: Center(
        child: GestureDetector(
          onTapDown: (_) => _controller.forward(),
          onTapUp: (_) => _controller.reverse(),
          child: ScaleTransition(
            scale: _scaleAnim,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text("Tap Me", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
