import 'package:flutter/material.dart';

import 'button_circle_icon.dart';

class ButtonCircleIcon extends StatelessWidget {
  const ButtonCircleIcon({required this.props, super.key});

  final ButtonCircleIconProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: props.shapeSize,
      width: props.shapeSize,
      child: Material(
        shape: const CircleBorder(),
        color: props.shapeColor,
        child: InkWell(
          onTap: props.onPressed,
          child: Center(
            child: props.icon.svg(
              height: props.iconSize,
              width: props.iconSize,
              colorFilter: ColorFilter.mode(
                  props.iconColor ?? theme.colorScheme.onPrimary,
                  BlendMode.srcIn),
            ),
          ),
        ),
      ),
    );
  }
}
