import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/work_out_viewmodel.dart';

class WorkOutView extends StatelessWidget {
  const WorkOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WorkOutViewModel>.reactive(
      viewModelBuilder: () => WorkOutViewModel(),
      builder: (
        BuildContext context,
        WorkOutViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Work Out View',
            ),
          ),
        );
      },
    );
  }
}
