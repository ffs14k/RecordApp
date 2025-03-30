import 'package:auto_route/auto_route.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/features/generic/widgets/language_text/language_text_widget.dart';
import 'package:record_app/features/home/home_page_view_model.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/features/application_bars/application_bar/application_bar.dart';
import 'package:record_app/widgets/drawer/application_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:record_app/features/home/subwidgets/record_contol/record_control_widget.dart';
import 'package:record_app/features/home/subwidgets/records_list/records_list.dart';
import 'package:record_app/features/home/subwidgets/send_query_btn/send_query_button.dart';
import 'package:record_app/widgets/loader/lodader_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (AppStore store) => HomePageViewModel.create(),
      builder: (context, model) {
        return Scaffold(
            drawer: const ApplicationDrawer(),
            appBar: const ApplicationBar(),
            resizeToAvoidBottomInset: true,
            body: _HomePageContent(model));
      },
    );
  }
}

class _HomePageContent extends StatelessWidget {
  final HomePageViewModel model;
  const _HomePageContent(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colorScheme.primary,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          _languagePickerRow(context),
          const Spacer(),
          RecordControlWidget(model: model.recordControl),
          RecordsListWidget(model: model.recordList),
          LoaderWidget(model.showLoader),
          SendQueryButton(model: model.sendQueryButton),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _languagePickerRow(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        const LanguageTextWidget(locale: null),
        IconButton(
          icon: Icon(Icons.arrow_right, color: context.colorScheme.secondary),
          iconSize: 35,
          onPressed: () => model.onLanguageTap(context),
        ),
      ],
    );
  }
}
