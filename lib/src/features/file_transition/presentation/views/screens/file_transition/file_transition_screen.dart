import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../../generated/assets.gen.dart';
import '../../../../../../shared/shared.dart';
import 'widgets/widgets.dart';

const _horizontalPadding = 20.0;
const _titleBottomPadding = 30.0;
const _elementsPadding = 15.0;

@RoutePage()
class FileTransitionScreen extends StatelessWidget {
  const FileTransitionScreen({super.key});

  void _navigateToFileExport() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  void _navigateToFileImport() {
    // TODO: Add implementation
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    final loc = context.loc;
    final theme = Theme.of(context);
    return ColoredBox(
      color: theme.colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: _horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              loc.fileTransitionTitle,
              style: theme.textTheme.displaySmall?.copyWith(
                  color: theme.colorScheme.onBackground,
                  fontWeight: FontWeight.w500),
            ),
            const HeightSpacer(_titleBottomPadding),
            FileTransitionAction(
              props: FileTransitionActionProps(
                  isPrimaryIconBackground: false,
                  icon: Assets.icons.fileUpload,
                  title: loc.fileTransitionExport,
                  subtitle: loc.fileTransitionExportSubtitle,
                  onPressed: _navigateToFileExport),
            ),
            const HeightSpacer(_elementsPadding),
            FileTransitionAction(
              props: FileTransitionActionProps(
                  icon: Assets.icons.fileDownload,
                  title: loc.fileTransitionImport,
                  subtitle: loc.fileTransitionImportSubtitle,
                  onPressed: _navigateToFileImport),
            ),
          ],
        ),
      ),
    );
  }
}
