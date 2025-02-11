import 'package:go_router/go_router.dart';
import 'package:surapp_flutter/features/sample_feature/details/sample_item_details_view.dart';

class SampleItemDetailsViewRoute extends GoRoute {
  SampleItemDetailsViewRoute()
      : super(
          path: "/sample_item",
          builder: (context, state) {
            return const SampleItemDetailsView();
          },
        );
}
