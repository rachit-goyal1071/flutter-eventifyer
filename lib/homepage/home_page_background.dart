import 'package:flutter/material.dart';

class HomePageBackground extends StatelessWidget {
  final screenHeight;
  const HomePageBackground({Key? key,@required this.screenHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        height: screenHeight * 0.5,
        color: themedata.primaryColor,

      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();

    Offset CurveStartPoint = Offset(0, size.height * 0.85);
    Offset CurveEndPoint = Offset(size.width, size.height * 0.85);
    path.lineTo(CurveStartPoint.dx,CurveStartPoint.dy);
    path.quadraticBezierTo(size.width/2, size.height, CurveEndPoint.dx, CurveEndPoint.dy);
    path.lineTo(size.width, 0);
    return path;


  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
}