import 'package:flutter/material.dart';


class CircleShapeWithPath extends StatelessWidget {
  const CircleShapeWithPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle With Path'),
      ),
      body: CustomPaint(
        painter: CircleWithPathPainter(),
        child: Container(),
      ),
    );
  }
}

class CircleWithPathPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    var paint = Paint()
        ..color = Colors.teal
        ..strokeWidth = 6
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round;
    
    var path = Path();
    
    path.addOval(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 100));
    
    canvas.drawPath(path, paint);
  }
  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
