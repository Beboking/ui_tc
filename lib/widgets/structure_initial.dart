import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../responsive.dart';
import 'continue_with_te.dart';

class StructureInitial extends StatelessWidget {
  const StructureInitial({
    super.key,
    required this.rp,
    required this.title,
    required this.description,
    required this.assetPrincipal,
    required this.titleButton,
    this.onTap,
    this.onTapMaybeLater,
    required this.withButtons, this.wpImg = 100,
  });

  final Responsive rp;
  final String title;
  final String description;
  final String assetPrincipal;
  final String titleButton;
  final Function? onTap;
  final Function? onTapMaybeLater;
  final bool withButtons;
  final double wpImg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: rp.hp(4),
          width: rp.width,
          alignment: Alignment.centerRight,
          child: SvgPicture.asset(
            'assets/seguridad_cargando.svg',
          ),
        ),
        SizedBox(
          width: rp.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: rp.dp(2.4),
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: rp.hp(.5),
              ),
              Text(
                description,
                style: TextStyle(
                    fontSize: rp.dp(1.4),
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        SizedBox(
          height: rp.hp(6),
        ),
        Image.asset(assetPrincipal, width: rp.wp(wpImg),),
        const Spacer(),
        if (withButtons)
          bt_principal(
            onTap: onTap!(),
            title: titleButton,
            colorTitle: Colors.white,
            color: Colors.black,
            withLogo: false,
          ),
        if (withButtons)
          SizedBox(
            height: rp.hp(1.2),
          ),
        if (withButtons)
          bt_principal(
            onTap: onTapMaybeLater!(),
            title: 'Maybe later',
            withLogo: false,
          ),
      ],
    );
  }
}
