import 'package:flutter/material.dart';
import '../responsive.dart';
import '../widgets/about_card.dart';
import '../contact_details/info_section.dart';
import '../contact_details/more_info_card.dart';
import '../contact_details/red_social_card.dart';
import '../contact_details/user_info_card.dart';
import '../contact_details/blockchain_info.dart';

class AssetDetails extends StatelessWidget {
  const AssetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final rp = Responsive(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoSection(
                title: 'User info',
                cards: [
                  UserInfoCard(
                    title: 'User name',
                    content: '@Gne_s',
                    icon: 'assets/profile.svg',
                  ),
                  UserInfoCard(
                    title: 'Account',
                    content: 'Verified',
                    icon: 'assets/account.svg',
                  ),
                  UserInfoCard(
                    title: 'Mail',
                    content: 'Gne_s@tripleenableverified.com',
                    icon: 'assets/mail.svg',
                  ),
                  UserInfoCard(
                    title: 'Phone',
                    content: '+1 829 865 8228',
                    icon: 'assets/phone.svg',
                  ),
                ],
              ),
              InfoSection(
                title: 'Red social',
                cards: [
                  RedSocialCard(
                    title: 'Facebook',
                    content: '@sergio_pacheco',
                    icon: 'assets/facebook.svg',
                  ),
                  RedSocialCard(
                    title: 'Twitter/x',
                    content: '@pacheco_dev',
                    icon: 'assets/twitter.svg',
                  ),
                  RedSocialCard(
                    title: 'Instagram',
                    content: '@axmel_sp',
                    icon: 'assets/instagram.svg',
                  ),
                ],
              ),
              InfoSection(
                title: 'More info',
                cards: [
                  MoreInfoCard(
                    content: 'www.useurl.com',
                    icon: 'assets/url.svg',
                  ),
                  MoreInfoCard(
                    content: 'Dominican Republic',
                    icon: 'assets/world.svg',
                  ),
                  MoreInfoCard(
                    content: 'Joined Jul 17, 2024',
                    icon: 'assets/info.svg',
                  ),
                ],
              ),
              InfoSection(
                title: 'Transaction info',
                children: [
                  BlockchainInfo(),
                  SizedBox(height: 10),
                  AboutCard(
                    title: 'ID',
                    content: '0x9sjnjs92244nnsi3jn4993u43wwrfcerc434c34c34c',
                  ),
                  AboutCard(
                    title: 'Hash',
                    content: '0x9sjnjs92244nnsi3jn49933c3434c34c3c34cu4',
                  ),
                  AboutCard(
                    title: 'Signature',
                    content: '0x9sjnjs92244nnsi3c3434jn43c43c993u4',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
