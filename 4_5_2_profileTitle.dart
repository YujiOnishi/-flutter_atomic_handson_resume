import 'package:flutter/material.dart';

class ProfileTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "プロフィール",
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
