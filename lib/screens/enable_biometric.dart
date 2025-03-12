import 'package:flutter/material.dart';
import '../responsive.dart';
import '../widgets/structure_initial.dart';

class EnableBiometric extends StatelessWidget {
  const EnableBiometric({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
        child: StructureInitial(
          rp: rp,
          title: 'Enable Biometric',
          description: 'Use biometric to fill in your password',
          assetPrincipal: 'assets/Img_4_Biometric.png',
          titleButton: 'Enable Face ID',
          onTap: () {},
          onTapMaybeLater: () {},
          withButtons: true,
        ),
      )),
    );
  }
}
