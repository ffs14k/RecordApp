import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/features/home/subwidgets/records_list/records_list_item.dart';
import 'package:record_app/features/home/subwidgets/records_list/records_list_view_model.dart';

class RecordsListWidget extends StatelessWidget {
  final RecordsListViewModel model;
  const RecordsListWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: model.records
          .map(
            (e) => Container(
              padding: EdgeInsets.only(
                left: context.spacing(SizeType.m),
                right: context.spacing(SizeType.m),
              ),
              child: RecordsListItem(
                key: ValueKey<String>(e.recordId),
                model: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
