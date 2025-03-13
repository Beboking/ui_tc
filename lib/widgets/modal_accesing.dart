import 'package:flutter/material.dart';

import '../colors.dart';
import '../responsive.dart';
import 'circular_animated.dart';

class ModalAccesing extends StatefulWidget {
  const ModalAccesing({super.key});

  @override
  State<ModalAccesing> createState() => _ModalAccesingState();
}

class _ModalAccesingState extends State<ModalAccesing> {
  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Container(
      height: rp.hp(30),
      width: rp.width,
      padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
      decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.white),
          color: Colors.white,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18))
      ),

      child: Column(
        children: [
          SizedBox(
            height: rp.hp(2),
          ),
          Text(
            'Accessing...',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: rp.dp(2.6),
              color: ColorsConst.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: rp.hp(3),
          ),
          AnimatedCircles(),
          SizedBox(
            height: rp.hp(4),
          ),
          Text(
            'By continuing, you agree to the TripleEnabler Zones Terms of Service and Privacy Policy.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: rp.dp(1.2),
              color: ColorsConst.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
