import 'package:flutter/material.dart';
import 'package:surapp_flutter/common/app_assets/app_assets.dart';
import 'package:surapp_flutter/core/localization/locale_extension.dart';
import 'package:surapp_flutter/features/sample_feature/sample_item_list_view_route.dart';

import 'sample_item.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
    required this.router,
  });

  final List<SampleItem> items;
  final SampleItemListViewRouter router;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.locale.homeTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => router.openSettings(context),
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            title: Text(context.locale.sampleItem(item.id)),
            leading: CircleAvatar(
              foregroundImage: AssetImage(AppAssets.image.flutterLogo),
            ),
            onTap: () => router.openDetials(context),
          );
        },
      ),
    );
  }
}
