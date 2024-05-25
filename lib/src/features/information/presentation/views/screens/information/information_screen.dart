import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../../generated/assets.gen.dart';
import '../../../../../../shared/shared.dart';
import 'widgets/widgets.dart';

const _horizontalPadding = 20.0;
const _elementsPadding = 30.0;

@RoutePage()
class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;
    return ColoredBox(
      color: theme.colorScheme.surface,
      child: SafeArea(
        child: SingleChildScrollView(
          child: SeparatedColumn(
            separatorBuilder: (_, __) => const HeightSpacer(_elementsPadding),
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: _horizontalPadding),
                child: Text(
                  loc.informationTitle,
                  style: theme.textTheme.displaySmall?.copyWith(
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const ChartTreatment(),
              YearsAvailable(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: _horizontalPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: CardCount(
                        props: CardCountProps(
                            icon: Assets.icons.sling,
                            count: 150,
                            subtitle: loc.informationPatients),
                      ),
                    ),
                    const WidthSpacer(_horizontalPadding),
                    Expanded(
                      child: CardCount(
                        props: CardCountProps(
                            icon: Assets.icons.toothAdd,
                            count: 1200,
                            subtitle: loc.informationTreatments),
                      ),
                    ),
                  ],
                ),
              ),
              // TODO: Add profit widget
            ],
          ),
        ),
      ),
    );
  }
}
