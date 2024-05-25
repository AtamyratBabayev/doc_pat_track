import 'package:flutter/material.dart';

import '../../spacer/spacer.dart';
import 'divider_titled.dart';

const _dividerHeight = 5.0;
const _borderRadius = 10.0;
const _titleRightPadding = 10.0;

class DividerTitled extends StatelessWidget {
  const DividerTitled({required this.props, super.key});

  final DividerTitledProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: props.height,
      child: Row(
        children: [
          Text(
            props.title,
            style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold),
          ),
          const WidthSpacer(_titleRightPadding),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: theme.colorScheme.onSurfaceVariant,
                  borderRadius: BorderRadius.circular(_borderRadius)),
              height: _dividerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
