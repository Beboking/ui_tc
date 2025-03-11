import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../responsive.dart';

class ContinueWithTe extends StatelessWidget {
  const ContinueWithTe({super.key, this.asset = 'assets/TE_icon.svg', required this.onTap, this.title = 'Continue with TripleEnable'});

  final String asset;
  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        width: rp.width,
        height: rp.hp(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: .5, color: Colors.grey),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              asset,
      width: rp.dp(1.7),          ),
            SizedBox(
              width: rp.wp(3),
            ),
            Text(title, style: TextStyle(fontSize: rp.dp(1.4), fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
