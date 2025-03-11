import 'package:flutter/material.dart';

import '../responsive.dart';

class CheckAgree extends StatefulWidget {
  final ValueChanged<bool> onChanged;

  const CheckAgree({super.key, required this.onChanged});

  @override
  _CheckAgreeState createState() => _CheckAgreeState();
}

class _CheckAgreeState extends State<CheckAgree> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Transform.scale(
          scale: 0.8,
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
            activeColor: Colors.green,
            visualDensity: VisualDensity.compact,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
        SizedBox(
          width: rp.wp(1),
        ),
        SizedBox(
          width: rp.wp(75),
          child: Text(
            "I agree to TripleEnabler Zone's Terms of Service and Privacy Policy.",
            style: TextStyle(fontSize: rp.dp(1)),
          ),
        ),
      ],
    );
  }
}
