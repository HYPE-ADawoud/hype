import 'package:flutter/material.dart';
import 'package:hype/app/common/themes/app_dims.dart';
import 'package:hype/app/common/widgets/app_toolbar.dart';
import 'package:hype/app/common/widgets/pointer_item.dart';
import 'package:hype/utils/NumberHelper.dart';

class AdminFiltrationPage extends StatelessWidget {
  final String title;
  final Function backCallBack;
  final Color itemBackGround;
  final List list;

  const AdminFiltrationPage(
      {Key? key, required this.title, required this.itemBackGround, required this.list, required this.backCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppToolbar(title: title, backCallBack: backCallBack),
        _buildListView(),
      ],
    );
  }

  Widget _buildListView() {
    return Expanded(
      child: ListView.separated(
          padding: AppDims.pagePadding,
          itemCount: list.length,
          separatorBuilder: (_, __) => const SizedBox(
                height: 10,
              ),
          itemBuilder: (cxt, index) {
            final maxIndicator = list[0].indicator;
            return PointerItem(
              title: list[index].userName,
              subtitle: formatter.format(list[index].indicator),
              percentage: list[index].percentage(maxIndicator),
              itemBackGround: itemBackGround,
            );
          }),
    );
  }
}
