import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../responsive.dart';
import 'bt_tc.dart';
import 'card_user.dart';
import 'continue_with_te.dart';

class ModalAccessZone extends StatelessWidget {
  const ModalAccessZone({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);
    return Container(
      height: rp.hp(70),
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
            height: rp.hp(4),
          ),
          SvgPicture.asset(
            'assets/TE_icon.svg',
            width: rp.dp(3.5),
          ),
          SizedBox(
            height: rp.hp(2),
          ),
          Text(
            'Select Your Access Zones',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: rp.dp(1.5),
              color: ColorsConst.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: rp.hp(.6),
          ),
          Text(
            'Sign in to one or more security zones for a seamless Tr3sPass experience. Add more zones anytime.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: rp.dp(1.3),
              color: ColorsConst.blackFontFileName,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: rp.hp(2)),


          CardUser(asset: 'assets/anonymous_perfil.svg', onTap: () {}, title: '@Anonimous_002', description: 'Anonimous', color: ColorsConst.anonymousColor, onChanged: (bool value) {  },),
          CardUser(asset: 'assets/verify_perfil.svg', onTap: () {}, title: '@Verify_002', description: 'Verified', color: ColorsConst.verifiedColor, onChanged: (bool value) {  },),
          CardUser(asset: 'assets/Secure_perfile.svg', onTap: () {}, title: '@Secure_002', description: 'Secure', color: ColorsConst.securedColor, onChanged: (bool value) {  },),
          Divider(
            color: Colors.black,
            height: rp.hp(4),
            thickness: 0.1,
          ),
          SizedBox(height: rp.hp(1)),

          Text(
            'To proceed, TripleEnable will share your username, email address, and profile picture with Tr3sPass. Before using this app, please review its privacy policy and terms of service.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: rp.dp(1.3),
              color: ColorsConst.blackFontFileName,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: rp.hp(3)),
          bt_principal(onTap: () async {

          }, title: 'Sign in to selected zone', color: ColorsConst.btTE, colorTitle: Colors.white,),
        ],
      ),
    );
  }
}
