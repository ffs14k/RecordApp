import 'package:injectable/injectable.dart';
import 'package:record_app/features/home/home_page_view_model.dart';
import 'package:record_app/features/home/subwidgets/record_contol/record_control_widget_view_model_mapper.dart';
import 'package:record_app/features/home/subwidgets/records_list/records_list_view_model_mapper.dart';
import 'package:record_app/features/home/subwidgets/send_query_btn/send_query_button_view_model_mapper.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';
import 'package:record_app/routing/app_router.gr.dart';

@injectable
class HomePageVmmapper {
  final AppStore store;
  final RecordControlWidgetViewModelMapper recordControlWidgetViewModelMapper;
  final RecordsListViewModelMapper recordsListViewModelMapper;
  final SendQueryButtonViewModelMapper sendQueryButtonViewModelMapper;

  HomePageVmmapper(
    this.store,
    this.recordControlWidgetViewModelMapper,
    this.recordsListViewModelMapper,
    this.sendQueryButtonViewModelMapper,
  );

  HomePageViewModel map() {
    return HomePageViewModel(
      store.state.homePageState.showLoading,
      recordControlWidgetViewModelMapper.map(store),
      recordsListViewModelMapper.map(store),
      sendQueryButtonViewModelMapper.map(store),
      (context) => store.dispatch(
        NavigatePushAction(context, const AppLanguagePickerRoute()),
      ),
    );
  }
}
