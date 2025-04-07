import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:test_app_chat/colors.dart';

import '../responsive.dart';

class ProfileGauge extends StatelessWidget {
  final double progress;
  final String imageUrl;
  final String name;
  final String nickName;

  const ProfileGauge({
    super.key,
    required this.progress,
    required this.imageUrl, required this.name, required this.nickName,
  });

  @override
  Widget build(BuildContext context) {
    Responsive rp = Responsive(context);

    return Row(
      children: [
        SizedBox(
          width: rp.hp(12),
          height: rp.hp(12),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    minimum: 0,
                    maximum: 100,
                    startAngle: 120,
                    endAngle: 60,
                    showTicks: false,
                    showLabels: false,
                    axisLineStyle: AxisLineStyle(
                      thickness: 0.15,
                      color: Colors.grey[300],
                      thicknessUnit: GaugeSizeUnit.factor,
                      cornerStyle: CornerStyle.bothCurve,
                    ),
                    pointers: <GaugePointer>[
                      RangePointer(
                        value: progress,
                        width: 0.15,
                        sizeUnit: GaugeSizeUnit.factor,
                        color: ColorsConst.verifiedColor,
                        cornerStyle: CornerStyle.bothCurve,
                      ), MarkerPointer(
                        value: progress,
                        markerType: MarkerType.circle,
                        color:  ColorsConst.verifiedColor,
                        markerHeight: 12,
                        markerWidth: 12,
                        enableAnimation: true,
                      ),
                    ],
                  )
                ],
              ),
              ClipOval(
                child: Image.network(
                  imageUrl,
                  width: rp.hp(8),
                  height: rp.hp(8),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: rp.wp(4)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: '${progress.toInt()}%',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:  ColorsConst.verifiedColor,
                        fontSize: rp.dp(1.6),
                      ),
                    ),
                     TextSpan(text: ' - ICS', style: TextStyle(fontSize: rp.dp(1.6))),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: rp.dp(1.7),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                nickName,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: rp.dp(1.6)
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
