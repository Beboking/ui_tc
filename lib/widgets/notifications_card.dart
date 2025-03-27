import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../responsive.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({
    super.key,
    required this.title,
    required this.content,
    required this.value,
    required this.onToggle,
  });

  final String title;
  final String content;
  final bool value;
  final ValueChanged<bool> onToggle;

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Container(
      width: rp.width,
      height: rp.hp(7),
      padding: EdgeInsets.symmetric(horizontal: rp.hp(2)),
      margin: EdgeInsets.symmetric(vertical: rp.hp(0.8)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: rp.dp(1.5),
                  color: Colors.grey,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: rp.dp(1.5),
                  color: Colors.black,
                ),
              ),
            ],
          ),
          CupertinoSwitch(
            value: value,
            onChanged: onToggle,
          ),
        ],
      ),
    );
  }
}
