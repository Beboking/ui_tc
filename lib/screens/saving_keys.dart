import 'package:flutter/material.dart';
import '../responsive.dart';
import '../widgets/structure_initial.dart';

class SavingKeys extends StatelessWidget {
  const SavingKeys({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
            child: StructureInitial(
              rp: rp,
              title: 'Saving keys to device...',
              description: '',
              assetPrincipal: 'assets/Img_1_Key.png',
              titleButton: 'Enable Face ID',
              onTap: () {},
              onTapMaybeLater: () {},
              withButtons: false,
              wpImg: 80,
            ),
          )),
    );
  }
}
