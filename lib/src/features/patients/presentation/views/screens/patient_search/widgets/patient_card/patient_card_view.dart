import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../../../../shared/shared.dart';
import 'name_circle_background/name_circle_background.dart';
import 'patient_card_props.dart';

const _borderRadius = 20.0;
const _horizontalPadding = 15.0;
const _verticalPadding = 15.0;
const _nameBottomPadding = 10.0;
const _iconRightPadding = 10.0;

class PatientCard extends StatelessWidget {
  const PatientCard({required this.props, super.key});

  final PatientCardProps props;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(_borderRadius);
    final patient = props.patient;

    final formattedDateOfBirth =
        DateFormat.yMMMd(Localizations.localeOf(context).languageCode)
            .format(patient.dateOfBirth);

    return Material(
      color: theme.colorScheme.surfaceBright,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () => props.onPressed?.call(patient.id),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: _horizontalPadding, vertical: _verticalPadding),
          child: Row(
            children: [
              NameCircleBackground(
                props: NameCircleBackgroundProps(
                    fullname: patient.fullname,
                    isPrimaryBackgroundColor: props.isPrimaryAbbreviation),
              ),
              const WidthSpacer(_iconRightPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      patient.fullname,
                      style: theme.textTheme.labelLarge?.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.bold),
                    ),
                    const HeightSpacer(_nameBottomPadding),
                    Text(
                      formattedDateOfBirth,
                      style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
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
