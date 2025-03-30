import 'package:record_app/entities/ui/locale_id.dart';

class IsLoadedMutateAction {
  bool isLoaded;
  IsLoadedMutateAction(this.isLoaded);
}

class LocaleMutateAction {
  LocaleId locale;
  LocaleMutateAction(this.locale);
}
