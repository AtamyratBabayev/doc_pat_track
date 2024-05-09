import '../../../../../generated/assets.gen.dart';

const _iconSize = 48.0;
const _iconPadding = 20.0;

class IconCircleBackgroundProps {
  const IconCircleBackgroundProps(
      {required this.icon,
      this.isPrimaryBackground = true,
      this.iconPadding = _iconPadding,
      this.iconSize = _iconSize});

  final SvgGenImage icon;
  final double iconSize;
  final double iconPadding;
  final bool isPrimaryBackground;
}
