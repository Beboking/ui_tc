import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_svg/svg.dart';
import '../responsive.dart';

class CardUser extends StatefulWidget {
  const CardUser(
      {super.key,
      required this.asset,
      this.color,
      required this.onTap,
      required this.title,
      required this.description, required this.onChanged});

  final String asset;
  final Color? color;
  final Function onTap;
  final String title;
  final String description;
  final ValueChanged<bool> onChanged;

  @override
  State<CardUser> createState() => _CardUserState();
}

class _CardUserState extends State<CardUser> {
  bool _isChecked = false;


  @override
  Widget build(BuildContext context) {

    Responsive rp = Responsive(context);

    return Container(
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
                widget.title,
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
                        color: widget.color?.withOpacity(.1),
                        borderRadius: BorderRadius.circular(rp.hp(3)),
                      ),
                      child: SvgPicture.asset(
                        widget.asset,
                        fit: BoxFit.scaleDown,
                      )),
                  SizedBox(width: rp.wp(0.8)),

                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: rp.dp(1.3),
                      color: widget.color,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const Spacer(),


                  Transform.scale(
                    scale: 1,
                    child: Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            _isChecked = value;
                          });
                          widget.onChanged(_isChecked);
                        }
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      splashRadius: 0,
                      activeColor: Colors.black,
                      visualDensity: VisualDensity.compact,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
