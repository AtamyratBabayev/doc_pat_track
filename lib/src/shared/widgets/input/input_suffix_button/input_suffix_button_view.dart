import 'package:flutter/material.dart';

import 'input_suffix_button_props.dart';

const _iconSize = 18.0;
const _rightPadding = 12.0;

class InputSuffixButton extends StatelessWidget {
  const InputSuffixButton({required this.props, super.key});

  final InputSuffixButtonProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: _rightPadding),
      child: IconButton(
        iconSize: _iconSize,
        onPressed: props.onPressed,
        splashColor: Colors.transparent,
        icon: props.icon.svg(
          width: _iconSize,
          height: _iconSize,
          colorFilter: ColorFilter.mode(
            theme.inputDecorationTheme.suffixIconColor ?? Colors.transparent,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
