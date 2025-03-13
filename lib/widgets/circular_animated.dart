import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app_chat/colors.dart';

import '../responsive.dart';

class AnimatedCircles extends StatefulWidget {
  @override
  _AnimatedCirclesState createState() => _AnimatedCirclesState();
}

class _AnimatedCirclesState extends State<AnimatedCircles> {
  bool _isExpanded = false;

  void _toggleAnimation() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _toggleAnimation();
    });
  }
  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            margin: EdgeInsets.only(right: _isExpanded ? 20 : 0),
            child:     Container(
                width: rp.hp(6),
                height: rp.hp(6),
                padding: EdgeInsets.all(.6),
                decoration: BoxDecoration(
                  color: ColorsConst.anonymousColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(rp.hp(3)),
                ),
                child: SvgPicture.asset(
                  'assets/anonymous_perfil.svg',
                  fit: BoxFit.scaleDown,
                )),
          ),
          Container(
              width: rp.hp(6),
              height: rp.hp(6),
              padding: EdgeInsets.all(.6),
              decoration: BoxDecoration(
                color: ColorsConst.verifiedColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(rp.hp(3)),
              ),
              child: SvgPicture.asset(
                'assets/verify_perfil.svg',
                fit: BoxFit.scaleDown,
              )),            AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            margin: EdgeInsets.only(left: _isExpanded ? 20 : 0),
            child:  Container(
                width: rp.hp(6),
                height: rp.hp(6),
                padding: EdgeInsets.all(.6),
                decoration: BoxDecoration(
                  color: ColorsConst.securedColor.withOpacity(.1),
                  borderRadius: BorderRadius.circular(rp.hp(3)),
                ),
                child: SvgPicture.asset(
                  'assets/Secure_perfile.svg',
                  fit: BoxFit.scaleDown,
                )),
          ),
        ],
      );
  }

  Widget circleWidget(Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}