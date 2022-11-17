import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/work_out_list_viewmodel.dart';

class WorkOutListView extends StatelessWidget {
  const WorkOutListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WorkOutListViewModel>.reactive(
      viewModelBuilder: () => WorkOutListViewModel(),
      builder: (
        BuildContext context,
        WorkOutListViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Work Out List View',
            ),
          ),
        );
      },
    );
  }
}
