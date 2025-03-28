import 'package:flutter/material.dart';
import 'section_title.dart';
import '../responsive.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final List<Widget>? cards;
  final List<Widget>? children;

  const InfoSection({
    super.key,
    required this.title,
    this.cards,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    final rp = Responsive(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: title),
        ...(cards ?? []),
        ...(children ?? []),
        Divider(),
        SizedBox(height: rp.hp(1.5)),
      ],
    );
  }
}
