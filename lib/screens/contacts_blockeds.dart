import 'package:flutter/material.dart';

import '../responsive.dart';
import '../widgets/bt_tc.dart';
import '../widgets/contact_blocked.dart';

class ContactsBlockeds extends StatelessWidget {
  const ContactsBlockeds({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: rp.wp(3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '20 users blocked',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: rp.dp(1.5),
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: rp.hp(0.5),
                  ),
                  Text(
                      'Blocked users can\'t send you messages or add you to groups. They won\'t see your profile pictures or last online status.',   style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: rp.dp(1.2),
                      color: Colors.grey),),
                  SizedBox(
                    height: rp.hp(2),
                  ),
                  BtTc(
                    onTap: () {},
                    title: 'Blocked users',
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: rp.hp(1),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return CardContact(
                    name: 'Juan Francisco',
                    email: 'pacheco@tripleenablerverified.com',
                    onTap: () {
                      print('test');
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
