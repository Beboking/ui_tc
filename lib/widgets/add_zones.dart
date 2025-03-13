import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../responsive.dart';
import 'circular_animated.dart';

class AddZones extends StatefulWidget {
  const AddZones({super.key});

  @override
  State<AddZones> createState() => _AddZonesState();
}

class _AddZonesState extends State<AddZones> {
  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Container(
      height: rp.hp(40),
      width: rp.width,
      padding: EdgeInsets.symmetric(horizontal: rp.wp(4)),
      decoration: BoxDecoration(
          border: Border.all(width: 0, color: Colors.white),
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      child: Column(
        children: [
          SizedBox(
            height: rp.hp(2),
          ),
          Container(
            width: rp.width,
            height: rp.hp(9),
            padding: EdgeInsets.symmetric(horizontal: rp.wp(3.5)),
            child: Row(
              children: [
                const ProfilePicture(
                  name: 'Aditya Dharmawan Saputra',
                  radius: 22,
                  fontsize: 21,
                  img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                ),
                SizedBox(width: rp.wp(4)),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'whwqj jwjewj',
                      style: TextStyle(
                        fontSize: rp.dp(1.6),
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            width: rp.hp(1.6),
                            height: rp.hp(1.6),
                            padding: EdgeInsets.all(.6),
                            decoration: BoxDecoration(
                              color: ColorsConst.anonymousColor.withOpacity(.1),
                              borderRadius: BorderRadius.circular(rp.hp(3)),
                            ),
                            child: SvgPicture.asset(
                              'assets/anonymous_perfil.svg',
                              fit: BoxFit.scaleDown,
                            )),
                        SizedBox(width: rp.wp(0.8)),
                        Text(
                          'sssksksk sksks',
                          style: TextStyle(
                            fontSize: rp.dp(1.3),
                            color: ColorsConst.anonymousColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),

                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
          Container(
            width: rp.width,
            height: rp.hp(9),
            padding: EdgeInsets.symmetric(horizontal: rp.wp(3.5)),
            child: Row(
              children: [
                const ProfilePicture(
                  name: 'Aditya Dharmawan Saputra',
                  radius: 22,
                  fontsize: 21,
                  img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                ),
                SizedBox(width: rp.wp(4)),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'whwqj jwjewj',
                          style: TextStyle(
                            fontSize: rp.dp(1.6),
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                width: rp.hp(1.6),
                                height: rp.hp(1.6),
                                padding: EdgeInsets.all(.6),
                                decoration: BoxDecoration(
                                  color: ColorsConst.anonymousColor.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(rp.hp(3)),
                                ),
                                child: SvgPicture.asset(
                                  'assets/anonymous_perfil.svg',
                                  fit: BoxFit.scaleDown,
                                )),
                            SizedBox(width: rp.wp(0.8)),
                            Text(
                              'sssksksk sksks',
                              style: TextStyle(
                                fontSize: rp.dp(1.3),
                                color: ColorsConst.anonymousColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),

                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          Container(
            width: rp.width,
            height: rp.hp(9),
            padding: EdgeInsets.symmetric(horizontal: rp.wp(3.5)),
            child: Row(
              children: [
                const ProfilePicture(
                  name: 'Aditya Dharmawan Saputra',
                  radius: 22,
                  fontsize: 21,
                  img: 'https://avatars.githubusercontent.com/u/37553901?v=4',
                ),
                SizedBox(width: rp.wp(4)),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'whwqj jwjewj',
                          style: TextStyle(
                            fontSize: rp.dp(1.6),
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                width: rp.hp(1.6),
                                height: rp.hp(1.6),
                                padding: EdgeInsets.all(.6),
                                decoration: BoxDecoration(
                                  color: ColorsConst.anonymousColor.withOpacity(.1),
                                  borderRadius: BorderRadius.circular(rp.hp(3)),
                                ),
                                child: SvgPicture.asset(
                                  'assets/anonymous_perfil.svg',
                                  fit: BoxFit.scaleDown,
                                )),
                            SizedBox(width: rp.wp(0.8)),
                            Text(
                              'sssksksk sksks',
                              style: TextStyle(
                                fontSize: rp.dp(1.3),
                                color: ColorsConst.anonymousColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),

                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
