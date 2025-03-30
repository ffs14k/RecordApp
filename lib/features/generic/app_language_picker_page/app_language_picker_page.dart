import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/features/generic/app_language_picker_page/app_language_picker_page_view_model.dart';
import 'package:record_app/features/generic/widgets/bottom_sheet_wrapper/bottom_sheet_wrapper.dart';
import 'package:record_app/features/generic/widgets/language_text/language_text_widget.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/utils/extensions/list_extensions.dart';

@RoutePage()
class AppLanguagePickerPage extends StatelessWidget {
  const AppLanguagePickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (AppStore store) => AppLanguagePickerPageViewModel.create(),
      distinct: true,
      builder: (context, model) {
        return BottomSheetWrapper(
          child: _AppLanguagePickerPageContent(model),
        );
      },
    );
  }
}

class _AppLanguagePickerPageContent extends StatelessWidget {
  final AppLanguagePickerPageViewModel model;
  const _AppLanguagePickerPageContent(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(context.spacing(SizeType.xl)),
      itemCount: model.items.length,
      itemBuilder: (context, idx) {
        final sectionModel = model.items.safe(idx);
        if (sectionModel == null) {
          return const SizedBox.shrink();
        }
        return _ListItem(sectionModel);
      },
    );
  }
}

class _ListItem extends StatelessWidget {
  final AppLanguagePickerPageItemViewModel model;
  const _ListItem(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.spacing(SizeType.m)),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            LanguageTextWidget(locale: model.locale),
            const Spacer(),
            _selectIcon(context),
          ],
        ),
      ),
    );
  }

  Widget _selectIcon(BuildContext context) {
    return IconButton(
      onPressed: model.isSelected ? null : () => model.onSelect(context),
      icon: Icon(
        model.isSelected ? Icons.check : Icons.arrow_right,
        color: context.colorScheme.secondary,
        size: model.isSelected ? 20 : 35,
      ),
    );
  }
}
