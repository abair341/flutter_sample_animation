import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;
  Tween _tween;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _tween = new Tween<double>(begin: 150.0, end: 480.0);
    _animation = _tween.animate(_animationController);
    _animation.addListener(() {
      setState() {}
    });

    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: _animation.value,
            left: 50.0,
            child: ScaleTransition(
              scale: _animationController,
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 40.0,
              ),
            ),
          ),
          Positioned(
            top: _animation.value,
            left: 100.0,
            child: ScaleTransition(
              scale: _animationController,
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.red,
                size: 40.0,
              ),
            ),
          ),
          Positioned(
            top: _animation.value,
            left: 150.0,
            child: ScaleTransition(
              scale: _animationController,
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.cyan,
                size: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
