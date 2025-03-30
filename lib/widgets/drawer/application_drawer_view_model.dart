import 'package:flutter/material.dart';
import 'package:record_app/entities/ui/tab_id.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';
import 'package:redux/redux.dart';

class ApplicationDrawerViewModel {
  Function(BuildContext, TabId) onTabItemTap;
  ApplicationDrawerViewModel(this.onTabItemTap);

  factory ApplicationDrawerViewModel.converter(Store<AppState> store) {
    return ApplicationDrawerViewModel(
      (context, tab) {
        Navigator.of(context).pop();
        store.dispatch(
          SelectTabAction(tab),
        );
      },
    );
  }
}
