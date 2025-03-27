import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../responsive.dart';
import '../widgets/about_card.dart';
import '../widgets/about_card_url.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: rp.wp(3)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AboutCard(title: 'App version', content: '2.3.4 (29201919293)',),
              const AboutCard(title: 'App commit', content: 'iosj2227783238382jmj288383',),
              const AboutCard(title: 'Node version', content: 'Status/ims/Ajnds9228939383',),
              const AboutCard(title: 'Infrastructure version', content: '2.3.24 Version api tripleenable',),

              SizedBox(
                height: rp.hp(2.5),
              ),
              Text(
                'Website',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: rp.dp(1.6),
                    color: Colors.grey),
              ),

              const AboutCardUrl( content: 'TripleCyber.app', url: 'https://www.tripleenable.com/',),

              SizedBox(
                height: rp.hp(2.5),
              ),
              Text(
                'Documents',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: rp.dp(1.6),
                    color: Colors.grey),
              ),
              const AboutCardUrl( content: 'Privacy policy', url: 'https://www.tripleenable.com/',),

              const AboutCardUrl( content: 'Terms of Use', url: 'https://www.tripleenable.com/',),

              Spacer(),
              Center(
                child: Container(
                  width: rp.wp(30),
                  height: rp.hp(3),
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Center(child: const Text('Production', style: TextStyle(color: Colors.white),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

