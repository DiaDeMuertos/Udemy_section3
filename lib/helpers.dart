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

class CustomSizedBoxLongPress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        print('Long Pressed');
      },
      onLongPressUp: () {
        print('Long Press Released');
      },
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          color: Colors.red[200],
          child: Center(
            child: Text('Jelow Long Press'),
          ),
        ),
      ),
    );
  }
}

class CustomSizedBoxVerticalDrag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (DragStartDetails details) {
        print('Drag Started');
        print(details);
      },
      onVerticalDragUpdate: (DragUpdateDetails details) {
        print('Drag Updated');
        print(details);
      },
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Container(
          color: Colors.red[300],
          child: Center(
            child: Text('Jelow Vertical Drag'),
          ),
        ),
      ),
    );
  }
}
