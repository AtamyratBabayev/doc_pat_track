import 'package:flutter/material.dart';

import '../../../../../../../../shared/shared.dart';
import 'file_transition_action.dart';

const _borderRadius = 20.0;
const _horizontalPadding = 15.0;
const _verticalPadding = 15.0;
const _iconRightPadding = 20.0;
const _iconSize = 32.0;
const _iconPadding = 15.0;
const _titleBottomPadding = 15.0;

class FileTransitionAction extends StatelessWidget {
  const FileTransitionAction({required this.props, super.key});

  final FileTransitionActionProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(_borderRadius);

    return Material(
      color: theme.colorScheme.surface,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: props.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: _horizontalPadding, vertical: _verticalPadding),
          child: Row(
            children: [
              IconCircleBackground(
                props: IconCircleBackgroundProps(
                    iconSize: _iconSize,
                    iconPadding: _iconPadding,
                    icon: props.icon,
                    isPrimaryBackground: props.isPrimaryIconBackground),
              ),
              const WidthSpacer(_iconRightPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      props.title,
                      style: theme.textTheme.titleLarge?.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.w500),
                    ),
                    const HeightSpacer(_titleBottomPadding),
                    Text(
                      props.subtitle,
                      style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorsExtension.onSurfaceSecondary,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
