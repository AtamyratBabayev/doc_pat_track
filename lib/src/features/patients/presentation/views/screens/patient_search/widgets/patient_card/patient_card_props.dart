import '../../../../../../domain/domain.dart';

class PatientCardProps {
  const PatientCardProps(
      {required this.patient,
      this.onPressed,
      this.isPrimaryAbbreviation = true});
  final bool isPrimaryAbbreviation;
  final void Function(int)? onPressed;
  final Patient patient;
}
