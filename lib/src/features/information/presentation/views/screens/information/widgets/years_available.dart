import 'package:flutter/material.dart';

import '../../../../../../../shared/shared.dart';
import '../../../../../../../shared/widgets/widgets.dart';

const _horizontalPadding = 20.0;

class YearsAvailable extends StatelessWidget {
  YearsAvailable({super.key});

  final _years = ['2021', '2022', '2023', '2024', 'All'];

  final _selectedYearNotifier = ValueNotifier('2021');

  void _updateSelectedYear(String value) {
    _selectedYearNotifier.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
      scrollDirection: Axis.horizontal,
      child: ValueListenableBuilder(
          valueListenable: _selectedYearNotifier,
          builder: (_, value, __) {
            final selectableYears = _years
                .map((title) => ButtonSelectable(
                      props: ButtonSelectableProps(
                          title: title,
                          onPressed: () => _updateSelectedYear(title),
                          isSelected: title == _selectedYearNotifier.value),
                    ))
                .toList();
            return SeparatedRow(
              separatorBuilder: (_, __) => const WidthSpacer(10.0),
              children: selectableYears,
            );
          }),
    );
  }
}
