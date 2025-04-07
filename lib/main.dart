import 'package:flutter/material.dart';
import 'package:test_app_chat/screens/asset_details.dart';
import 'models/transaction_model.dart';
import 'models/user_info_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userInfo = UserInfoData(
      username: '@Gne_s',
      accountStatus: 'Verified',
      name: 'Sergio Pacheco',
      photo: 'jgbjhbjbjh',
      ics: 90,
      nickName: '@Gne_s',
      emails: ['gne_s@tripleenableverified.com', 'gnemail@otrocorreo.com'],
      phones: ['+1 829 865 8228', '+1 809 123 4567', '+1 829 865 8228', '+1 809 123 4567'],
      socialMedia: {
        'Facebook': ['@sergio_pacheco', '@pacheco_fb'],
        'Twitter': ['@pacheco_dev'],
        'Instagram': ['@axmel_sp'],
      },
      websites: ['www.useurl.com', 'www.gne.dev'],
      country: 'Dominican Republic',
      joinedDate: 'Jul 17, 2024',
    );


    final transactionInfo = TransactionInfoData(
      id: '0x9sjnjs92244nnsi3jn4993u43wwrfcerc434c34c34c',
      hash: '0x9sjnjs92244nnsi3jn49933c3434c34c3c34cu4',
      signature: '0x9sjnjs92244nnsi3c3434jn43c43c993u4',
    );
    return MaterialApp(
      title: 'Flutter WebView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AssetDetails(
        userInfo: userInfo,
        transactionInfo: transactionInfo,
      ),
    );
  }
}
