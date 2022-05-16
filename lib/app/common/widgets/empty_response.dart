import 'package:flutter/material.dart';
import 'package:hype/app/common/themes/app_colors.dart';

class EmptyResponse extends StatelessWidget {

  const EmptyResponse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Icon(Icons.cloud_off_outlined, size: 70, color: AppColors.current.dimmed,),
          ),
          const Text('No Data Found!'),
        ],),
    );
  }
}
