import 'package:flutter/material.dart';
import '../responsive.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final rp = Responsive(context);
    return Padding(
      padding: EdgeInsets.only(top: rp.hp(1.5), bottom: rp.hp(1.5)),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: rp.dp(1.6),
          color: Colors.grey,
        ),
      ),
    );
  }
}
