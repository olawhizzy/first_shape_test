import 'package:flutter/material.dart';

class CircleShapeWithCanva extends StatelessWidget {
  const CircleShapeWithCanva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Shape Canva'),
      ),
      body: CustomPaint(
        painter: CircleShapeWithCanvaPainter(),
        child: Container(),
      ),
    );
  }
}


class CircleShapeWithCanvaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 100, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
