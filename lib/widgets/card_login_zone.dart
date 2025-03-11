import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../responsive.dart';

class CardLoginZone extends StatelessWidget {
  const CardLoginZone({super.key, required this.asset, this.color, required this.onTap, required this.title, required this.description});

  final String asset;
  final Color? color;
  final Function onTap;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: rp.hp(1)),
      width: rp.width,
      height: rp.hp(9),
      padding: EdgeInsets.symmetric(horizontal: rp.wp(3.5)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: .5, color: Colors.grey),
      ),
      child: Row(
        children: [
          Container(
            width: rp.hp(5.5),
            height: rp.hp(5.5),
            decoration: BoxDecoration(
              color: color?.withOpacity(.1),
              borderRadius: BorderRadius.circular(rp.hp(3)),
            ),
            child: SvgPicture.asset(
              asset,
              fit: BoxFit.scaleDown,
            )

          ),
          SizedBox(width: rp.wp(2)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: rp.dp(1.6),
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: rp.hp(0.1)),

              Text(
                description,
                style: TextStyle(
                  fontSize: rp.dp(1.3),
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
