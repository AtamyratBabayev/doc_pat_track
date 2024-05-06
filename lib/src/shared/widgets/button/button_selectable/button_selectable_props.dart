class ButtonSelectableProps {
  const ButtonSelectableProps(
      {required this.title, this.isSelected = false, this.onPressed});

  final String title;
  final bool isSelected;
  final void Function()? onPressed;
}
