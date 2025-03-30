import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/text_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/l10n/l10n_build_context_extension.dart';

class ApplicationBar extends StatelessWidget implements PreferredSizeWidget {
  static const double _height = 80;

  const ApplicationBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size(
        double.infinity,
        _height,
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colorScheme.secondary,
      surfaceTintColor: context.colorScheme.primary,
      flexibleSpace: Center(
        child: Text(
          context.l10n.appName,
          style: context.textStyle(
            TextType.heading2,
            context.colorScheme.primary,
          ),
        ),
      ),
      toolbarHeight: _height,
    );
  }
}
