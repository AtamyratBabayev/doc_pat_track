class AppDrawerProps {
  const AppDrawerProps(
      {required this.position,
      required this.onItemPressed,
      this.closeButtonEnabled = true});

  final bool closeButtonEnabled;
  final int position;
  final void Function(int) onItemPressed;
}
