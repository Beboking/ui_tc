import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app_chat/colors.dart';

import '../responsive.dart';

class DividerTc extends StatelessWidget {
  const DividerTc({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: rp.hp(6),
        ),
        Container(
          color: Colors.grey,
          width: rp.wp(42),
          height: .5,
        ),
        const Text('or', style: TextStyle(color: ColorsConst.blackFontFileName),),
        Container(
          color: Colors.grey,
          width: rp.wp(42),
          height: .5,
        ),
        SizedBox(
          height: rp.hp(7),
        ),
      ],
    );
  }
}
