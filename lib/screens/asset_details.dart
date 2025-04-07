import 'package:flutter/material.dart';
import '../contact_details/profile_gauge.dart';
import '../models/transaction_model.dart';
import '../models/user_info_data.dart';
import '../responsive.dart';
import '../widgets/about_card.dart';
import '../contact_details/info_section.dart';
import '../contact_details/more_info_card.dart';
import '../contact_details/red_social_card.dart';
import '../contact_details/user_info_card.dart';
import '../contact_details/blockchain_info.dart';

class AssetDetails extends StatelessWidget {
  final UserInfoData userInfo;
  final TransactionInfoData transactionInfo;

  const AssetDetails({
    super.key,
    required this.userInfo,
    required this.transactionInfo,
  });

  @override
  Widget build(BuildContext context) {
    final rp = Responsive(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
              child: ProfileGauge(
                progress: userInfo.ics,
                imageUrl: 'https://randomuser.me/api/portraits/women/44.jpg',
                name: userInfo.name,
                nickName: userInfo.nickName,
              ),
            ),
            const Divider(),
            SizedBox(height: rp.hp(.5)),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoSection(
                      title: 'Contact info',
                      cards: [
                        ...userInfo.emails.map((email) => UserInfoCard(
                          title: 'Mail',
                          content: email,
                          icon: 'assets/mail.svg',
                        )),
                        ...userInfo.phones.map((phone) => UserInfoCard(
                          title: 'Phone',
                          content: phone,
                          icon: 'assets/phone.svg',
                        )),
                      ],
                    ),
                    InfoSection(
                      title: 'Red social',
                      cards: userInfo.socialMedia.entries.expand((entry) {
                        final platform = entry.key.toLowerCase();
                        return entry.value.map((value) => RedSocialCard(
                          title: entry.key,
                          content: value,
                          icon: 'assets/$platform.svg',
                        ));
                      }).toList(),
                    ),
                    InfoSection(
                      title: 'More info',
                      cards: [
                        ...userInfo.websites.map((site) => MoreInfoCard(
                          content: site,
                          icon: 'assets/url.svg',
                        )),
                        MoreInfoCard(
                          content: userInfo.country,
                          icon: 'assets/world.svg',
                        ),
                        MoreInfoCard(
                          content: 'Joined ${userInfo.joinedDate}',
                          icon: 'assets/info.svg',
                        ),
                      ],
                    ),
                    InfoSection(
                      title: 'Transaction info',
                      children: [
                        const BlockchainInfo(),
                        const SizedBox(height: 10),
                        AboutCard(
                          title: 'ID',
                          content: transactionInfo.id,
                        ),
                        AboutCard(
                          title: 'Hash',
                          content: transactionInfo.hash,
                        ),
                        AboutCard(
                          title: 'Signature',
                          content: transactionInfo.signature,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
