import 'package:flutter/widgets.dart';

class SendQueryButtonViewModel {
  final bool isEnabled;
  final Function(BuildContext) onSendQueryButtonTap;

  SendQueryButtonViewModel(
    this.isEnabled,
    this.onSendQueryButtonTap,
  );
}
