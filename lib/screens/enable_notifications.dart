import 'package:flutter/material.dart';
import '../responsive.dart';
import '../widgets/structure_initial.dart';

class EnableNotifications extends StatelessWidget {
  const EnableNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
            child: StructureInitial(
              rp: rp,
              title: 'Enable Notifications',
              description: 'Use biometric to fill in your password',
              assetPrincipal: 'assets/Img_5_Notifications.png',
              titleButton: 'Enable Notifications',
              onTap: () {},
              onTapMaybeLater: () {},
              withButtons: true,
            ),
          )),
    );
  }
}