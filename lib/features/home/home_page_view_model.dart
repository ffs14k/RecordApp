import 'package:flutter/widgets.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/features/home/home_page_view_model_mapper.dart';
import 'package:record_app/features/home/subwidgets/record_contol/record_control_widget_view_model.dart';
import 'package:record_app/features/home/subwidgets/records_list/records_list_view_model.dart';
import 'package:record_app/features/home/subwidgets/send_query_btn/send_query_button_view_model.dart';

class HomePageViewModel {
  final bool showLoader;
  final RecordControlWidgetViewModel recordControl;
  final RecordsListViewModel recordList;
  final SendQueryButtonViewModel sendQueryButton;
  final void Function(BuildContext) onLanguageTap;

  HomePageViewModel(
    this.showLoader,
    this.recordControl,
    this.recordList,
    this.sendQueryButton,
    this.onLanguageTap,
  );

  factory HomePageViewModel.create() {
    return getIt<HomePageVmmapper>().map();
  }
}
