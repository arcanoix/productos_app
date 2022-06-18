import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [_PurpleBox(), _headerIcon(), this.child]));
  }
}

class _headerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        /*
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/image/logo_x2_50.jpeg"),
          radius: 100,
        ),
      ),
      */
        child: Container(
            width: double.infinity,
            //height: double.infinity,
            //color: Colors.red,
            margin: EdgeInsets.only(top: 30),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image/logo_x2_50.jpeg'),
                  //fit: BoxFit.fill
                ),
              ),
            )));
  }
}

class _PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * 0.4,
        decoration: _buildBoxDecoration(),
        child: Stack(
          children: [
            Positioned(child: _Bubble(), top: 90, left: 30),
            Positioned(child: _Bubble(), top: -40, left: -30),
            Positioned(child: _Bubble(), top: -50, right: -20),
            Positioned(child: _Bubble(), bottom: -50, left: 10),
            Positioned(child: _Bubble(), bottom: 120, right: 20)
          ],
        ));
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 17, 82, 31),
        Color.fromARGB(255, 1, 77, 4)
      ]));
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color.fromRGBO(255, 255, 255, 0.05)));
  }
}
