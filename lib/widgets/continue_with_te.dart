import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../responsive.dart';

class bt_principal extends StatelessWidget {
  const bt_principal(
      {super.key,
      this.asset = 'assets/TE_icon.svg',
      required this.onTap,
      this.title = 'Continue with TripleEnable',
      this.colorTitle = Colors.black,
      this.color = Colors.transparent,
      this.withBorder = true,
      this.withLogo = true});

  final String asset;
  final void Function()? onTap;
  final String title;
  final Color colorTitle;
  final Color color;
  final bool withBorder;
  final bool withLogo;

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
            border:
                withBorder ? Border.all(width: .5, color: Colors.grey) : null,
            color: color),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            withLogo
                ? SvgPicture.asset(
                    asset,
                    width: rp.dp(1.7),
                  )
                : const SizedBox(),
            SizedBox(
              width: rp.wp(3),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: rp.dp(1.4),
                  color: colorTitle,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
