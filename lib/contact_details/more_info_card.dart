import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app_chat/colors.dart';

import '../responsive.dart';

class MoreInfoCard extends StatelessWidget {
  const MoreInfoCard({super.key, required this.content, required this.icon});

  final String content;
  final String icon;

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Container(
      width: rp.width,
      height: rp.hp(4),
      margin: EdgeInsets.symmetric(vertical: rp.hp(0.8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            width: rp.dp(2),
          ),
          SizedBox(
            width: rp.wp(3),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                content,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: rp.dp(1.5),
                    color: ColorsConst.blackFontFileName),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
