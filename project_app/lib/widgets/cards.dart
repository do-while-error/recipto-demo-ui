import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCards extends StatelessWidget {
  final Color color;
  final String? ImageString;
  final String LightText;
  final String DarkText;
  final String ButtonText;

  const MyCards({
    super.key,
    required this.color,
    required this.ImageString,
    required this.LightText,
    required this.DarkText,
    required this.ButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            color.withOpacity(0.8),
            color.withOpacity(1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow effect
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
            child: Container(
                height: 70, width: 70, child: Image.asset(ImageString!)),
          ),
          Text(
            LightText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5),
          Text(
            DarkText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          // SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: DottedDivider(thickness: 1, color: Colors.grey),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      ButtonText,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DottedDivider extends StatelessWidget {
  final double height;
  final double thickness;
  final Color color;

  DottedDivider({
    this.height = 1,
    this.thickness = 1,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: _DottedDividerPainter(thickness: thickness, color: color),
    );
  }
}

class _DottedDividerPainter extends CustomPainter {
  final double thickness;
  final Color color;

  _DottedDividerPainter({required this.thickness, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;

    double dashWidth = 5, dashSpace = 3, startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
