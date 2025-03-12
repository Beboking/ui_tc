import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app_chat/colors.dart';

import '../responsive.dart';
import '../widgets/bt_tc.dart';
import '../widgets/card_login_zone.dart';
import '../widgets/check_agree.dart';
import '../widgets/continue_with_te.dart';
import '../widgets/divider_tc.dart';
import '../widgets/modal_access_zone.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isAgree = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() => _showModalBottomSheet(context));
  }

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
          child: Column(
            children: [
              Container(
                width: rp.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: rp.hp(3),
                    ),
                    Container(
                      width: rp.width,
                      child: SvgPicture.asset(
                        'assets/3pas_logo.svg',
                        width: rp.wp(50),
                      ),
                    ),
                    SizedBox(
                      height: rp.hp(2),
                    ),
                    Text(
                      'Sign In',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: rp.dp(2.2),
                        color: ColorsConst.blackFontFileName,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Select and create your ideal identity!',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: rp.dp(1.3),
                        color: ColorsConst.blackFontFileName,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: rp.hp(1)),
                  ],
                ),
              ),
              CardLoginZone(
                asset: 'assets/anonymous_perfil.svg',
                onTap: () {},
                title: 'Anonymous Zone',
                description: 'Stay confident in every step',
                color: ColorsConst.anonymousColor,
              ),
              CardLoginZone(
                asset: 'assets/verify_perfil.svg',
                onTap: () {},
                title: 'Verified Zone',
                description: 'Stay confident in every step',
                color: ColorsConst.verifiedColor,
              ),
              CardLoginZone(
                asset: 'assets/Secure_perfile.svg',
                onTap: () {},
                title: 'Secure Zone',
                description: 'Choose only the information you want to share',
                color: ColorsConst.securedColor,
              ),
              const DividerTc(),
              bt_principal(onTap: () async {
                await LaunchApp.openApp(
                  androidPackageName: '',
                  iosUrlScheme: 'https://apps.apple.com/do/app/tripleenabler-ims/id6476735702?l=en-GB',
                  appStoreLink: '',
                );
              }),
              const Spacer(),
              CheckAgree(
                onChanged: (bool value) {
                  isAgree = value;
                  setState(() {});
                },
              ),
              SizedBox(height: rp.hp(2)),
              BtTc(
                onTap: isAgree ? () {} : null,
                title: 'Create profile',
                color: isAgree ? Colors.black : ColorsConst.btInactive,
              ),
              SizedBox(height: rp.hp(2)),
            ],
          ),
        ),
      ),
    );
  }
  _showModalBottomSheet(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 200));
    if (!mounted) return;

    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      context: context,
      builder: (context) {
        return const ModalAccessZone();
      },
    );
  }
}
