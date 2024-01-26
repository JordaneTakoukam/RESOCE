// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

enum AnimationType {
  fade,
  fadeLeftToRight,
  fadeRightToLeft,
  fadeTopToBottom,
  fadeBottomToTop,
}

class AnimWidget extends StatefulWidget {
  final Widget child;
  final AnimationType animationType;
  final int duration;
  final int delay;
  final double fadeLeftToRightBegin;
  final double fadeRightToLeftBegin;
  final double fadeTopToBottomBegin;
  final double fadeBottomToTopBegin;

  const AnimWidget({
    Key? key,
    required this.child,
    this.animationType = AnimationType.fade,
    this.duration = 1000,
    this.delay = 0,
    this.fadeLeftToRightBegin = -1.0,
    this.fadeRightToLeftBegin = 1.0,
    this.fadeTopToBottomBegin = 1.0,
    this.fadeBottomToTopBegin = -1.0,
  }) : super(key: key);

  @override
  _AnimWidgetState createState() => _AnimWidgetState();
}

class _AnimWidgetState extends State<AnimWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Création du contrôleur d'animation
    _animationController = AnimationController(
      duration: Duration(milliseconds: widget.duration),
      vsync: this,
    );

    // Création de l'animation en fonction du type
    switch (widget.animationType) {
      case AnimationType.fade:
        _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeIn,
          ),
        );
        break;
      case AnimationType.fadeLeftToRight:
        _animation = Tween<double>(
          begin: widget.fadeLeftToRightBegin,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeIn,
          ),
        );
        break;
      case AnimationType.fadeRightToLeft:
        _animation = Tween<double>(
          begin: widget.fadeRightToLeftBegin,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeIn,
          ),
        );
        break;
      case AnimationType.fadeBottomToTop:
        _animation = Tween<double>(
          begin: widget.fadeBottomToTopBegin,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeIn,
          ),
        );
        break;
      case AnimationType.fadeTopToBottom:
        _animation = Tween<double>(
          begin: widget.fadeTopToBottomBegin,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeIn,
          ),
        );
        break;
    }

    // Démarrage de l'animation avec délai
    Future.delayed(Duration(milliseconds: widget.delay), () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double opacity = 1.0;
        double offsetX = 0.0;
        double offsetY = 0.0;

        switch (widget.animationType) {
          case AnimationType.fade:
            opacity = _animation.value;
            break;
          case AnimationType.fadeLeftToRight:
            offsetX = MediaQuery.of(context).size.width * _animation.value;
            break;
          case AnimationType.fadeRightToLeft:
            offsetX = -MediaQuery.of(context).size.width * _animation.value;
            break;
          case AnimationType.fadeTopToBottom:
            offsetY = MediaQuery.of(context).size.height * _animation.value;
            break;
          case AnimationType.fadeBottomToTop:
            offsetY = -MediaQuery.of(context).size.height * _animation.value;
            break;
        }

        return Transform.translate(
          offset: Offset(offsetX, offsetY),
          child: Opacity(
            opacity: opacity,
            child: widget.child,
          ),
        );
      },
    );
  }
}
