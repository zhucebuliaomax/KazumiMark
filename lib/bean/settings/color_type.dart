import 'package:flutter/material.dart';
import 'package:kazumi/l10n/l10n.dart';

List<Map<String, dynamic>> get colorThemeTypes => [
      {'color': Colors.green, 'label': currentL10n.colorDefault},
      {'color': Colors.teal, 'label': currentL10n.colorTeal},
      {'color': Colors.blue, 'label': currentL10n.colorBlue},
      {'color': Colors.indigo, 'label': currentL10n.colorIndigo},
      {
        'color': const Color(0xff6750a4),
        'label': currentL10n.colorViolet,
      },
      {'color': Colors.pink, 'label': currentL10n.colorPink},
      {'color': Colors.yellow, 'label': currentL10n.colorYellow},
      {'color': Colors.orange, 'label': currentL10n.colorOrange},
      {'color': Colors.deepOrange, 'label': currentL10n.colorDeepOrange},
    ];
