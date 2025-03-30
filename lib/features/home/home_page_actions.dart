import 'package:flutter/widgets.dart';
import 'package:record_app/DI/get_it/get_it.dart';
import 'package:record_app/features/home/redux/home_page_selectors.dart';
import 'package:record_app/network/service/user_query_service/user_query_service.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/features/home/redux/home_page_pure_actions.dart';
import 'package:record_app/repositories/records_pool/records_pool.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

class PlayButtonTapped extends CallableThunkAction<AppState> {
  final String recordId;
  PlayButtonTapped(this.recordId);

  @override
  call(Store<AppState> store) {
    // logic
  }
}

class SendQueryButtonTapped extends CallableThunkAction<AppState> {
  final BuildContext context;
  SendQueryButtonTapped(this.context);

  @override
  call(Store<AppState> store) async {
    if (!isSendButtonEnabledSelector(store.state)) {
      return;
    }
    store.dispatch(
      HomeLoadingStatePureAction(true),
    );

    try {
      await getIt<UserQueryService>().sendUserQuery(
        'user name',
        'user phone number',
        getIt<RecordsPool>().records,
      );
    } catch (_) {
      // handle error
    } finally {
      store.dispatch(
        HomeLoadingStatePureAction(false),
      );
    }
  }
}
