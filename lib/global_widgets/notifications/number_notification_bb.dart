import 'package:flutter/material.dart';

class NumberNotificationButtonBar extends StatelessWidget {
  final String number;
  const NumberNotificationButtonBar({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Center(
        child: Text(
          number,
          style: TextStyle(color: Colors.white, fontSize: 1),
        ),
      ),
    );
  }
}
