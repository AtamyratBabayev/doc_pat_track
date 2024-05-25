import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../../generated/assets.gen.dart';
import '../../../../../../src.dart';
import 'widgets/widgets.dart';

const _horizontalPadding = 20.0;
const _verticalPadding = 20.0;
const _elementsPadding = 15.0;
const _buttonsPadding = 10.0;

@RoutePage()
class PatientScreen extends StatefulWidget {
  const PatientScreen({required this.id, super.key});

  final int id;

  @override
  State<PatientScreen> createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen> {
  void _makeCall(String phone) {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  void _navigateToTreatmentHistory() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  void _navigateToTreatmentAdd() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  void _navigateToPatientUpdate() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  void _removePatient() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;
    return ColoredBox(
      color: theme.colorScheme.surface,
      child: ListView(
        padding: const EdgeInsets.only(
            right: _horizontalPadding,
            left: _horizontalPadding,
            bottom: _verticalPadding),
        children: [
          MainInfoCard(
            props: MainInfoCardProps(
                fullname: 'Serdar Atahanowich Merdanow',
                phone: '+99364020485',
                onPressed: () => _makeCall('+99364020485')),
          ),
          const HeightSpacer(_elementsPadding),
          InfoCard(
            props: InfoCardProps(
                icon: Assets.icons.calendar,
                title: loc.patientDateOfBirth,
                subtitle: '02.04.1995'),
          ),
          const HeightSpacer(_elementsPadding),
          InfoCard(
            props: InfoCardProps(
                icon: Assets.icons.location,
                title: loc.patientLocation,
                subtitle: 'Aşgabat şäheri, A.Nyýazow şaýoly, 23, 41'),
          ),
          const HeightSpacer(_elementsPadding),
          InfoCard(
            props: InfoCardProps(
                icon: Assets.icons.calendar,
                title: loc.patientLastVisit,
                subtitle: '18.12.2023'),
          ),
          const HeightSpacer(_elementsPadding),
          Button(
            props: ButtonProps(
                title: loc.patientAddTreatment,
                buttonVariant: ButtonVariant.secondary,
                onPressed: _navigateToTreatmentAdd),
          ),
          const HeightSpacer(_buttonsPadding),
          Button(
            props: ButtonProps(
                title: loc.patientHistory,
                onPressed: _navigateToTreatmentHistory),
          ),
        ],
      ),
    );
  }
}
