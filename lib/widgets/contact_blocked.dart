import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../colors.dart';
import '../responsive.dart';

class CardContact extends StatelessWidget {
  final String name;
  final String email;
  final void Function()? onTap;
  final double paddingLeft;
  final double width;
  final double contentWidth;
  final EdgeInsets? padding;

  const CardContact({
    super.key,
    required this.name,
    required this.email,
    this.onTap,
    this.paddingLeft = 3,
    this.width = 80,
    this.contentWidth = 100,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Platform.isAndroid
        ? Material(
            color: ColorsConst.transparent,
            child: InkWell(
              onTap: onTap,
              child: Container(
                width: rp.wp(contentWidth),
                padding: padding ??
                    EdgeInsets.symmetric(
                        horizontal: rp.wp(.6), vertical: rp.hp(0.8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: rp.wp(width),
                          child: Row(
                            children: [
                              SizedBox(
                                width: rp.wp(paddingLeft),
                              ),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {},
                                child: const ProfilePicture(
                                  name: 'Aditya Dharmawan Saputra',
                                  radius: 22,
                                  fontsize: 21,
                                  img:
                                      'https://avatars.githubusercontent.com/u/37553901?v=4',
                                ),
                              ),
                              SizedBox(
                                width: rp.wp(4),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: rp.wp(55),
                                          child: Text(
                                            name,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                fontSize: rp.dp(1.6),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      email,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: rp.dp(1.2),
                                          color: ColorsConst.grayLight,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print('ssss');
                      },
                      child: Container(
                          height: rp.hp(5),
                          width: rp.hp(5),
                          child: Icon(Icons.more_vert)),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Slidable(
            closeOnScroll: true,
            key: const ValueKey(0),
            dragStartBehavior: DragStartBehavior.start,
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  autoClose: true,
                  onPressed: (BuildContext context) {},
                  backgroundColor: ColorsConst.redButton,
                  foregroundColor: Colors.white,
                  icon: Icons.block,
                  label: 'Unlock User',
                ),
              ],
            ),
            child: Material(
              color: ColorsConst.transparent,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  width: rp.wp(contentWidth),
                  padding: padding ??
                      EdgeInsets.symmetric(
                          horizontal: rp.wp(.6), vertical: rp.hp(0.8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            width: rp.wp(width),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: rp.wp(paddingLeft),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {},
                                  child: const ProfilePicture(
                                    name: 'Aditya Dharmawan Saputra',
                                    radius: 22,
                                    fontsize: 21,
                                    img:
                                        'https://avatars.githubusercontent.com/u/37553901?v=4',
                                  ),
                                ),
                                SizedBox(
                                  width: rp.wp(4),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: rp.wp(55),
                                            child: Text(
                                              name,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: rp.dp(1.6),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Text(
                                        email,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: rp.dp(1.2),
                                            color: ColorsConst.grayLight,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
