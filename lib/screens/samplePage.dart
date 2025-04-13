import 'package:flutter/material.dart';

class SampleRoute extends StatefulWidget {
  const SampleRoute({super.key});

  @override
  State<SampleRoute> createState() => _SampleRoute();
}

class _SampleRoute extends State<SampleRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Now how did you get here'),
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
              top: Radius.circular(15),
            ),
            child: Image(
              image: AssetImage('assets/mv.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        body: Column(children: [
          const SizedBox(height: 10), // Spacing between items
        ]));
  }
}
