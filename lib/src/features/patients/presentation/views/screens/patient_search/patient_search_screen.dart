import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../../../../generated/assets.gen.dart';
import '../../../../../../shared/shared.dart';
import '../../../../domain/domain.dart';
import 'widgets/widgets.dart';

const _horizontalPadding = 20.0;
const _elementsPadding = 20.0;
const _searchBarBottomPadding = 5.0;
const _patientsPadding = 10.0;

@RoutePage()
class PatientSearchScreen extends StatefulWidget {
  const PatientSearchScreen({super.key});

  @override
  State<PatientSearchScreen> createState() => _PatientSearchScreenState();
}

class _PatientSearchScreenState extends State<PatientSearchScreen> {
  final _navigator = GetIt.instance<AppRouter>();

  void _navigateToPatient(int id) {
    _navigator.push(PatientScreenRoute(id: id));
  }

  void _navigateToPatientAdd() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = context.loc;
    final patients = [
      Patient(
          id: -1,
          fullname: 'Allamuradow Serdar Tahirowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Merdanow Kemal Tahirowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Kerjanow Mered Mamedowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Allamuradow Serdar Tahirowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Merdanow Kemal Tahirowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Kerjanow Mered Mamedowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Allamuradow Serdar Tahirowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Merdanow Kemal Tahirowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
      Patient(
          id: -1,
          fullname: 'Kerjanow Mered Mamedowich',
          dateOfBirth: DateTime.now(),
          location: 'Mary welayaty',
          phone: '+99364010101'),
    ];
    return Scaffold(
      floatingActionButton: Fab(
        props:
            FabProps(icon: Assets.icons.plus, onPressed: _navigateToPatientAdd),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
            child: Text(
              loc.patientSearchTitle,
              style: theme.textTheme.displaySmall?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const HeightSpacer(_elementsPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
            child: Input(
              props: InputProps(
                  hintText: loc.patientSearchHint,
                  suffixIcon: Assets.icons.search),
            ),
          ),
          const HeightSpacer(_searchBarBottomPadding),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(
                    horizontal: _horizontalPadding, vertical: _elementsPadding),
                itemBuilder: (_, pos) => PatientCard(
                      props: PatientCardProps(
                          patient: patients[pos],
                          isPrimaryAbbreviation: pos % 2 == 1,
                          onPressed: _navigateToPatient),
                    ),
                separatorBuilder: (_, __) =>
                    const HeightSpacer(_patientsPadding),
                itemCount: patients.length),
          )
        ],
      ),
    );
  }
}
