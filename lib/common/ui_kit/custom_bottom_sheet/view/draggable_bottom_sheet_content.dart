part of '../custom_bottom_sheet.dart';

class DraggableBottomSheetContent extends StatefulWidget {
  const DraggableBottomSheetContent({
    super.key,
    required this.title,
    required this.withIndicator,
    required this.showCloseButton,
    required this.slivers,
    this.fixedHeight,
    this.initialChildSize = 0.5,
    this.minChildSize = 0.4,
    this.appBarMinExtent = 62,
    this.appBarMaxExtent = 62,
    this.draggableScrollableController,
    this.headerWidget,
    this.aboveContentWidget,
    bool showBorderUnderHeaderWhenAboveScroll = true,
    this.snap = true,
    this.description,
    this.withoutTitleAndClose = false,
  }) : showBorderUnderHeaderWhenAboveScroll =
            showBorderUnderHeaderWhenAboveScroll && headerWidget != null;

  final String title;
  final bool withIndicator;
  final bool snap;
  final double? fixedHeight;
  final bool showCloseButton;
  final double minChildSize;
  final double initialChildSize;
  final double appBarMinExtent;
  final double appBarMaxExtent;
  final DraggableScrollableController? draggableScrollableController;
  final Widget? headerWidget;
  final Widget? aboveContentWidget;
  final bool showBorderUnderHeaderWhenAboveScroll;
  final List<Widget> slivers;
  final String? description;
  final bool withoutTitleAndClose;

  @override
  State<DraggableBottomSheetContent> createState() =>
      _DraggableBottomSheetContentState();
}

class _DraggableBottomSheetContentState
    extends State<DraggableBottomSheetContent> {
  bool _showHeaderBottomDivider = false;

  void _useScrollController(ScrollController scrollController) {
    if (!widget.showBorderUnderHeaderWhenAboveScroll) return;

    scrollController
        .addListener(() => _scrollControllerListener(scrollController));
  }

  void _scrollControllerListener(ScrollController scrollController) {
    switch (scrollController.position.userScrollDirection) {
      case ScrollDirection.reverse:
        if (scrollController.offset > 5) {
          setState(() => _showHeaderBottomDivider = true);
        }
        break;
      case ScrollDirection.forward:
        if (scrollController.offset <= 5) {
          setState(() => _showHeaderBottomDivider = false);
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DraggableScrollableSheet(
          expand: false,
          minChildSize: widget.minChildSize,
          initialChildSize: widget.initialChildSize,
          snap: widget.snap,
          controller: widget.draggableScrollableController,
          builder: (context, scrollController) {
            _useScrollController(scrollController);

            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverBottomSheetHeaderDelegate(
                    title: widget.title,
                    withIndicator: widget.withIndicator,
                    showCloseButton: widget.showCloseButton,
                    withoutTitleAndClose: widget.withoutTitleAndClose,
                    description: widget.description,
                    textScaler: MediaQuery.textScalerOf(context),
                  ),
                ),
                SliverToBoxAdapter(
                  child: widget.headerWidget ?? const SizedBox.shrink(),
                ),
                SliverToBoxAdapter(
                  child: AnimatedOpacity(
                    opacity: _showHeaderBottomDivider ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: const AppDivider(),
                  ),
                ),
                ...widget.slivers,
              ],
            );
          },
        ),
        widget.aboveContentWidget ?? const SizedBox.shrink(),
      ],
    );
  }
}

class _SliverBottomSheetHeaderDelegate extends SliverPersistentHeaderDelegate {
  _SliverBottomSheetHeaderDelegate({
    required this.title,
    required this.withIndicator,
    required this.showCloseButton,
    this.description,
    this.withoutTitleAndClose = false,
    required this.textScaler,
  });

  final String title;
  final bool withIndicator;
  final bool showCloseButton;
  final String? description;
  final bool withoutTitleAndClose;
  final TextScaler textScaler;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return BottomSheetAppBar(
      title: title,
      withIndicator: withIndicator,
      showCloseButton: showCloseButton,
      withoutTitleAndClose: withoutTitleAndClose,
      description: description,
    );
  }

  // TODO: Почему тут 50 если компонент BottomSheetAppBar имеет статическую высоту 62?
  double get _height {
    final $height = withIndicator ? 62 : 50;
    return textScaler.scale($height - 38) + 38;
  }

  @override
  double get maxExtent => _height;

  @override
  double get minExtent => _height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
