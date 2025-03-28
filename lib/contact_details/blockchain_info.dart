import 'package:flutter/material.dart';
import '../colors.dart';
import '../responsive.dart';

class BlockchainInfo extends StatelessWidget {
  const BlockchainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final rp = Responsive(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Blockchain',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: rp.dp(1.4),
            color: Colors.grey,
          ),
        ),
        Text(
          'SecureChain',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: rp.dp(1.4),
            color: ColorsConst.blackFontFileName,
          ),
        ),
      ],
    );
  }
}
