import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/text_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/design_system/color_sheme_ds_extensions.dart';
import 'package:record_app/features/home/subwidgets/send_query_btn/send_query_button_view_model.dart';
import 'package:record_app/l10n/l10n_build_context_extension.dart';

class SendQueryButton extends StatelessWidget {
  final SendQueryButtonViewModel model;
  const SendQueryButton({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: TextButton(
            onPressed: () {
              model.onSendQueryButtonTap(context);
            },
            style: TextButton.styleFrom(
              alignment: Alignment.center,
              minimumSize: const Size(155, 58),
              backgroundColor: model.isEnabled ? context.colorScheme.onPrimary : context.colorScheme.inactive,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
            ),
            child: Text(
              context.l10n.sendRecords,
              style: context.textStyle(
                TextType.body2,
                model.isEnabled ? context.colorScheme.shadow : context.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
