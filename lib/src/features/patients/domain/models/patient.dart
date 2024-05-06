class Patient {
  const Patient(
      {required this.id,
      required this.fullname,
      required this.dateOfBirth,
      required this.location,
      required this.phone});
  final int id;
  final String fullname;
  final DateTime dateOfBirth;
  final String location;
  final String phone;
}
