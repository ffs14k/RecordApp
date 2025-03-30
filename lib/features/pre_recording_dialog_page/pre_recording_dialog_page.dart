import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_redux/flutter_redux.dart";
import "package:record_app/design_system/atoms/size_type.dart";
import "package:record_app/design_system/atoms/text_type.dart";
import "package:record_app/design_system/build_context_ds_extensions.dart";
import "package:record_app/design_system/color_sheme_ds_extensions.dart";
import "package:record_app/features/pre_recording_dialog_page/pre_recording_dialog_page_view_model.dart";
import "package:record_app/l10n/l10n_build_context_extension.dart";
import "package:redux/redux.dart";
import 'package:record_app/redux/app/app_state.dart';

@RoutePage()
class PreRecordingDialogPage extends StatelessWidget {
  const PreRecordingDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (Store<AppState> store) => PreRecordingDialogPageViewModel.converter(store),
      builder: (context, model) {
        return _PreRecordingDialogPageContent(model);
      },
    );
  }
}

class _PreRecordingDialogPageContent extends StatelessWidget {
  final PreRecordingDialogPageViewModel model;
  const _PreRecordingDialogPageContent(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.shadow1,
      child: Center(
        child: Container(
          color: context.colorScheme.surface,
          child: IntrinsicWidth(
            child: IntrinsicHeight(
              child: Padding(
                padding: EdgeInsets.all(
                  context.spacing(
                    SizeType.xl,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      context.l10n.proviceMicroAccess,
                      style: context.textStyle(
                        TextType.heading3,
                        context.colorScheme.onSurface,
                      ),
                    ),
                    SizedBox(
                      height: context.spacing(SizeType.l),
                    ),
                    TextButton(
                      child: Text(context.l10n.ok),
                      onPressed: () => model.okTapped(context),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
