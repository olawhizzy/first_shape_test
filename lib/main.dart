import 'package:first_shape_test/shapes/CircleCanva.dart';
import 'package:first_shape_test/shapes/CirclePath.dart';
import 'package:first_shape_test/shapes/LineShape.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyShapeDrawer(),
    );
  }
}

class MyShapeDrawer extends StatelessWidget {
  const MyShapeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Line'),
      ),
      body: ShapeOptionPage(),
    );
  }
}

class ShapeOptionPage extends StatelessWidget {
  const ShapeOptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LineShape())), child: const Text('Line')),
          ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CircleShapeWithCanva())), child: const Text('Circle with Canva')),
          ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CircleShapeWithPath())), child: const Text('Circle with Path')),
        ],
      ),
    );
  }
}
