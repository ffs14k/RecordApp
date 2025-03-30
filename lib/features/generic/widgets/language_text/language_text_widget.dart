import 'package:flutter/widgets.dart';
import 'package:record_app/design_system/atoms/text_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/entities/ui/locale_id.dart';
import 'package:record_app/features/generic/widgets/language_text/language_text_widget_view_model.dart';

class LanguageTextWidget extends StatelessWidget {
  final LocaleId? locale;
  const LanguageTextWidget({required this.locale, super.key});

  @override
  Widget build(BuildContext context) {
    final model = LanguageTextWidgetViewModel.create(locale);
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: model.flag, style: const TextStyle(fontSize: 16)),
          const TextSpan(text: " ", style: TextStyle(fontSize: 16)),
          TextSpan(
            text: model.language,
            style: context.textStyle(TextType.body2, context.colorScheme.secondary),
          ),
        ],
      ),
    );
  }
}
