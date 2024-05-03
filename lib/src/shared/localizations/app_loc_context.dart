import 'package:flutter/widgets.dart';

import '../../../generated/l10n.dart';

/// Simplifier for getting localized translation.
extension AppLocContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
