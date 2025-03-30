import 'package:injectable/injectable.dart';
import 'package:record_app/features/home/home_page_actions.dart';
import 'package:record_app/features/home/subwidgets/send_query_btn/send_query_button_view_model.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/features/home/redux/home_page_selectors.dart';

@injectable
class SendQueryButtonViewModelMapper {
  SendQueryButtonViewModelMapper();

  SendQueryButtonViewModel map(AppStore store) {
    return SendQueryButtonViewModel(
      isButtonEnabledSelector(store.state),
      (context) {
        store.dispatch(
          SendQueryButtonTapped(context),
        );
      },
    );
  }
}
