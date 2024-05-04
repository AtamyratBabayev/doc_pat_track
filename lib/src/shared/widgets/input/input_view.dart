import 'package:flutter/material.dart';

import '../../../../../../generated/assets.gen.dart';
import 'input_props.dart';
import 'input_suffix_button/input_suffix_button.dart';

class Input extends StatefulWidget {
  const Input({required this.props, super.key});

  final InputProps props;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final _obscureNotifier = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _obscureNotifier.value =
        widget.props.inputType == TextInputType.visiblePassword;
  }

  void _toggleObscure() {
    final currentValue = _obscureNotifier.value;
    _obscureNotifier.value = !currentValue;
  }

  @override
  Widget build(BuildContext context) {
    final props = widget.props;
    final theme = Theme.of(context);
    return ValueListenableBuilder(
        valueListenable: _obscureNotifier,
        builder: (_, value, __) {
          Widget? suffixIcon;

          if (widget.props.suffixIcon != null) {
            suffixIcon = InputSuffixButton(
                props: InputSuffixButtonProps(
                    icon: widget.props.suffixIcon!,
                    onPressed: widget.props.onSuffixPressed));
          }

          if (widget.props.inputType == TextInputType.visiblePassword) {
            SvgGenImage icon = value ? Assets.icons.eyeOff : Assets.icons.eye;
            suffixIcon = InputSuffixButton(
              props:
                  InputSuffixButtonProps(icon: icon, onPressed: _toggleObscure),
            );
          }

          return TextFormField(
            controller: props.controller,
            autovalidateMode: props.validateMode,
            validator: props.validator,
            keyboardType: props.inputType,
            textInputAction: props.keyboardAction,
            inputFormatters: props.inputFormatters,
            style: theme.textTheme.labelLarge,
            maxLength: props.maxLength,
            maxLines: props.maxLines,
            minLines: props.minLines,
            onChanged: (value) => props.onChange?.call(value.trim()),
            obscureText: value,
            obscuringCharacter: '⁕',
            textCapitalization: props.textCapitalization,
            decoration: InputDecoration(
              alignLabelWithHint: props.maxLines > 1,
              hintText: props.hintText,
              prefixText: props.prefixText,
              labelText: props.label,
              suffixIcon: suffixIcon,
            ),
          );
        });
  }
}
