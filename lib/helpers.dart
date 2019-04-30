import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Listener(
        onPointerDown: (PointerDownEvent event) {
          RenderBox box = context.findRenderObject();
          print('Clicked Image');
          print(event);
          print(event.position.dx);
          print(box.globalToLocal(event.position));
        },
        onPointerMove: (PointerMoveEvent event) {
          print('Moved');
          print(event);
        },
        child: Image(
          width: 50,
          image: AssetImage('assets/images/skull_tattoo.png'),
        ),
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tapped');
      },
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          color: Colors.red[50],
          child: Center(
            child: Text('Jelow Tap'),
          ),
        ),
      ),
    );
  }
}

class CustomSizedBoxDobleTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        print('Double tapped');
      },
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          color: Colors.red[100],
          child: Center(
            child: Text('Jelow Doble Tap'),
          ),
        ),
      ),
    );
  }
}
