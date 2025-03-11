import 'package:flutter/material.dart';
import '../responsive.dart';

class BtTc extends StatelessWidget {
  const BtTc({super.key, required this.onTap, required this.title, required this.color});

  final Function? onTap;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Container(
      width: rp.width,
      height: rp.hp(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: .5, color: Colors.grey),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: rp.dp(1.4), fontWeight: FontWeight.w500, color: Colors.white),),
        ],
      ),
    );
  }
}
