import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../responsive.dart';

class AboutCardUrl extends StatelessWidget {
  const AboutCardUrl({
    super.key,
    required this.content,
    required this.url,
  });

  final String content;
  final String url;

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Container(
        width: rp.width,
        height: rp.hp(7),
        padding: EdgeInsets.symmetric(horizontal: rp.hp(2)),
        margin: EdgeInsets.symmetric(vertical: rp.hp(0.8)),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: rp.dp(1.5),
                      color: Colors.black),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_outward_outlined,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('no open: $url');
    }
  }
}
