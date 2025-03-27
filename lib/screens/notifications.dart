import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../responsive.dart';
import '../widgets/about_card.dart';
import '../widgets/about_card_url.dart';
import '../widgets/notifications_card.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
              SizedBox(
                height: rp.hp(2.5),
              ),
              Text(
                'Message Notifications',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: rp.dp(1.6),
                    color: Colors.grey),
              ),
              NotificationsCard(
                title: 'Show notifications',
                content: 'Enable show new message at the top',
                onToggle: (bool newValue) {
                  print("Nuevo valor del switch: $newValue");
                },
                value: true,
              ),
              SizedBox(
                height: rp.hp(2.5),
              ),
              Text(
                'Group Notifications',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: rp.dp(1.6),
                    color: Colors.grey),
              ),
              NotificationsCard(
                title: 'Show notifications',
                content: 'Enable show new message at the top',
                onToggle: (bool newValue) {
                  print("Nuevo valor del switch: $newValue");
                },
                value: true,
              ),
              SizedBox(
                height: rp.hp(2.5),
              ),
              Text(
                'Notifications Preference',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: rp.dp(1.6),
                    color: Colors.grey),
              ),
              NotificationsCard(
                title: 'Notification from non-contacts',
                content: 'Allow non-contact to write to you',
                onToggle: (bool newValue) {
                  print("Nuevo valor del switch: $newValue");
                },
                value: true,
              ),
              NotificationsCard(
                title: 'Show @ mentions',
                content: 'Show notification of a mention',
                onToggle: (bool newValue) {
                  print("Nuevo valor del switch: $newValue");
                },
                value: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
