import 'dart:io' as io;

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jhentai/src/service/local_gallery_service.dart';
import 'package:path/path.dart' as p;

import '../../../setting/style_setting.dart';
import '../../../utils/route_util.dart';
import '../../../utils/toast_util.dart';
import '../../../widget/eh_image.dart';
import '../../../widget/eh_wheel_speed_controller.dart';
import '../../../widget/focus_widget.dart';
import '../../layout/desktop/desktop_layout_page_logic.dart';
import '../../layout/mobile_v2/notification/tap_menu_button_notification.dart';
import '../download_base_page.dart';
import 'local_gallery_page_logic.dart';
import 'local_gallery_page_state.dart';

class LocalGalleryPage extends StatelessWidget {
  final bool showMenuButton;

  LocalGalleryPage({Key? key, required this.showMenuButton}) : super(key: key);

  final LocalGalleryPageLogic logic = Get.put<LocalGalleryPageLogic>(LocalGalleryPageLogic(), permanent: true);
  final LocalGalleryPageState state = Get.find<LocalGalleryPageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: FadeIn(child: buildBody()),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward, size: 28),
        foregroundColor: Get.theme.primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 3,
        heroTag: null,
        onPressed: logic.scroll2Top,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: CupertinoSlidingSegmentedControl<DownloadPageBodyType>(
        groupValue: DownloadPageBodyType.local,
        children: {
          DownloadPageBodyType.download: SizedBox(
            width: 66,
            child: Center(child: Text('download'.tr, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
          ),
          DownloadPageBodyType.archive: Text('archive'.tr, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          DownloadPageBodyType.local: Text('local'.tr, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        },
        onValueChanged: (value) => DownloadPageBodyTypeChangeNotification(value!).dispatch(context),
      ),
      elevation: 1,
      leadingWidth: 70,
      leading: ExcludeFocus(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showMenuButton)
              IconButton(
                icon: const Icon(FontAwesomeIcons.bars, size: 20),
                onPressed: () => TapMenuButtonNotification().dispatch(context),
              ),
            IconButton(
              icon: const Icon(Icons.help, size: 22),
              onPressed: () => toast('localGalleryHelpInfo'.tr, isShort: false),
              visualDensity: const VisualDensity(horizontal: -4),
            ),
          ],
        ),
      ),
      actions: [
        SizedBox(
          width: 88,
          child: Row(
            children: [
              ExcludeFocus(
                child: IconButton(
                  icon: Icon(Icons.merge, size: 24, color: state.aggregateDirectories ? Get.theme.primaryColor : Colors.grey),
                  onPressed: logic.toggleAggregateDirectory,
                  visualDensity: const VisualDensity(horizontal: -4),
                ),
              ),
              ExcludeFocus(
                child: IconButton(
                  icon: Icon(Icons.refresh, size: 26, color: Get.theme.primaryColor),
                  onPressed: logic.handleRefreshLocalGallery,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildBody() {
    return GetBuilder<LocalGalleryPageLogic>(
      id: LocalGalleryPageLogic.bodyId,
      builder: (_) => EHWheelSpeedController(
        scrollController: state.scrollController,
        child: ListView.builder(
          controller: state.scrollController,
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: logic.computeItemCount(),
          itemBuilder: (context, index) {
            if (state.aggregateDirectories) {
              return galleryItemBuilder(context, index);
            }

            if (index == 0) {
              return parentDirectoryItemBuilder(context);
            }

            if (index <= logic.computeCurrentDirectoryCount()) {
              return nestedDirectoryItemBuilder(context, index - 1);
            }

            return galleryItemBuilder(context, index - 1 - logic.computeCurrentDirectoryCount());
          },
        ),
      ),
    );
  }

  Widget parentDirectoryItemBuilder(BuildContext context) {
    return FocusWidget(
      focusedDecoration: BoxDecoration(border: Border(right: BorderSide(width: 3, color: Theme.of(context).appBarTheme.foregroundColor!))),
      handleTapArrowLeft: () => Get.find<DesktopLayoutPageLogic>().state.leftTabBarFocusScopeNode.requestFocus(),
      handleTapEnter: logic.backRoute,
      handleTapArrowRight: logic.backRoute,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: logic.backRoute,
        child: _buildNestedDirectory('/..', context),
      ),
    );
  }

  Widget nestedDirectoryItemBuilder(BuildContext context, int index) {
    String childPath = logic.computeChildPath(index);

    return FocusWidget(
      focusedDecoration: BoxDecoration(border: Border(right: BorderSide(width: 3, color: Theme.of(context).appBarTheme.foregroundColor!))),
      handleTapArrowLeft: () => Get.find<DesktopLayoutPageLogic>().state.leftTabBarFocusScopeNode.requestFocus(),
      handleTapEnter: () => logic.pushRoute(childPath),
      handleTapArrowRight: () => logic.pushRoute(childPath),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => logic.pushRoute(childPath),
        child: _buildNestedDirectory(p.relative(childPath, from: state.currentPath), context),
      ),
    );
  }

  Widget _buildNestedDirectory(String displayPath, BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,

        /// covered when in dark mode
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0.3, 1),
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Row(
          children: [
            const SizedBox(width: 110, child: Center(child: Icon(Icons.folder_open))),
            Expanded(child: Text(displayPath, maxLines: 1, overflow: TextOverflow.ellipsis))
          ],
        ),
      ),
    );
  }

  Widget galleryItemBuilder(BuildContext context, int index) {
    LocalGallery gallery = state.aggregateDirectories
        ? logic.localGalleryService.allGallerys[index]
        : logic.localGalleryService.path2Gallerys[state.currentPath]![index];

    Widget child = FocusWidget(
      focusedDecoration: BoxDecoration(border: Border(right: BorderSide(width: 3, color: Theme.of(context).appBarTheme.foregroundColor!))),
      handleTapArrowLeft: () => Get.find<DesktopLayoutPageLogic>().state.leftTabBarFocusScopeNode.requestFocus(),
      handleTapEnter: () => logic.goToReadPage(gallery),
      handleTapArrowRight: () => logic.goToReadPage(gallery),
      child: Slidable(
        key: Key(gallery.title),
        endActionPane: _buildEndActionPane(gallery),
        child: GestureDetector(
          onSecondaryTap: () => showBottomSheet(gallery, context),
          onLongPress: () => showBottomSheet(gallery, context),
          child: _buildGallery(gallery, context),
        ),
      ),
    );

    /// has not been deleted
    if (!logic.removedTitle2AnimationController.containsKey(gallery.title)) {
      return child;
    }

    AnimationController controller = logic.removedTitle2AnimationController[gallery.title]!;
    Animation<double> animation = logic.removedTitle2Animation[gallery.title]!;

    /// has been deleted, start animation
    if (!controller.isAnimating) {
      controller.forward();
    }

    return FadeTransition(opacity: animation, child: SizeTransition(sizeFactor: animation, child: child));
  }

  ActionPane _buildEndActionPane(LocalGallery gallery) {
    return ActionPane(
      motion: const DrawerMotion(),
      extentRatio: 0.15,
      children: [
        SlidableAction(
          icon: Icons.delete,
          foregroundColor: Colors.red,
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          onPressed: (BuildContext context) => logic.handleRemoveItem(gallery),
        )
      ],
    );
  }

  Widget _buildGallery(LocalGallery gallery, BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => logic.goToReadPage(gallery),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,

          /// covered when in dark mode
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
              spreadRadius: 1,
              offset: const Offset(0.3, 1),
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Row(
            children: [
              _buildCover(gallery, context),
              _buildInfo(gallery),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCover(LocalGallery gallery, BuildContext context) {
    return Obx(
      () => EHImage.file(
        containerHeight: 130,
        containerWidth: 110,
        galleryImage: gallery.images[0],
        adaptive: true,
        fit: StyleSetting.coverMode.value == CoverMode.contain ? BoxFit.contain : BoxFit.cover,
        clearMemoryCacheWhenDispose: false,
      ),
    );
  }

  Widget _buildInfo(LocalGallery gallery) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(gallery.title, maxLines: 3, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 15, height: 1.2)),
          const Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text(DateFormat('yyyy-MM-dd HH:mm:ss').format(gallery.time), style: TextStyle(fontSize: 12, color: Colors.grey.shade600))],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('${gallery.pageCount} P', style: TextStyle(fontSize: 12, color: Colors.grey.shade600))],
          ),
        ],
      ).paddingOnly(left: 6, right: 10, top: 8, bottom: 5),
    );
  }

  void showBottomSheet(LocalGallery gallery, BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: Text('delete'.tr, style: TextStyle(color: Colors.red.shade400)),
            onPressed: () {
              logic.handleRemoveItem(gallery);
              backRoute();
            },
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text('cancel'.tr),
          onPressed: backRoute,
        ),
      ),
    );
  }
}