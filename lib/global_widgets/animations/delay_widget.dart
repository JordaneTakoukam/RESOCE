// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';

class DelayedDisplayWidget extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration fadingDuration;
  final Curve slidingCurve;
  final Offset slidingBeginOffset;
  final bool fadeIn;

  const DelayedDisplayWidget({
    Key? key,
    required this.child,
    this.delay = Duration.zero,
    this.fadingDuration = const Duration(milliseconds: 800),
    this.slidingCurve = Curves.decelerate,
    this.slidingBeginOffset = const Offset(0.0, 0.35),
    this.fadeIn = true,
  }) : super(key: key);

  @override
  _DelayedDisplayWidgetState createState() => _DelayedDisplayWidgetState();
}

class _DelayedDisplayWidgetState extends State<DelayedDisplayWidget>
    with TickerProviderStateMixin {
  late AnimationController _opacityController;

  late Animation<Offset> _slideAnimationOffset;

  Timer? _timer;

  Duration get delay => widget.delay;

  Duration get opacityTransitionDuration => widget.fadingDuration;

  Curve get slidingCurve => widget.slidingCurve;

  Offset get beginOffset => widget.slidingBeginOffset;

  bool get fadeIn => widget.fadeIn;

  @override
  void initState() {
    super.initState();

    _opacityController = AnimationController(
      vsync: this,
      duration: opacityTransitionDuration,
    );

    final CurvedAnimation curvedAnimation = CurvedAnimation(
      curve: slidingCurve,
      parent: _opacityController,
    );

    _slideAnimationOffset = Tween<Offset>(
      begin: beginOffset,
      end: Offset.zero,
    ).animate(curvedAnimation);

    _runFadeAnimation();
  }

  @override
  void dispose() {
    _opacityController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  void didUpdateWidget(DelayedDisplayWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.fadeIn == fadeIn) {
      return;
    }
    _runFadeAnimation();
  }

  void _runFadeAnimation() {
    _timer = Timer(delay, () {
      fadeIn ? _opacityController.forward() : _opacityController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityController,
      child: SlideTransition(
        position: _slideAnimationOffset,
        child: widget.child,
      ),
    );
  }
}
