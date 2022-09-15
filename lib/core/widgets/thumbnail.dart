import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// サムネイル（円）
class CircleThumbnail extends StatelessWidget {
  const CircleThumbnail({
    this.size = 60,
    this.url,
    this.fit = BoxFit.cover,
    this.backgroundColor,
    this.noImageIconData,
    this.isLoading = false,
    this.loadingWidget,
    this.cacheMaxAge,
    this.onTap,
    super.key,
  });
  final double size;

  final String? url;
  final BoxFit fit;
  final Color? backgroundColor;
  final IconData? noImageIconData;
  final bool isLoading;
  final Widget? loadingWidget;
  final Duration? cacheMaxAge;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Widget image() {
      Widget noImageWidget() {
        return SizedBox(
          width: size,
          height: size,
          child: ColoredBox(
            color: backgroundColor ?? const Color(0xFFd5d5d5),
            child: Icon(
              noImageIconData ?? Icons.person,
              color: Colors.white,
              size: size * 0.8,
            ),
          ),
        );
      }

      if (url != null) {
        return ExtendedImage.network(
          url!,
          width: size,
          height: size,
          fit: BoxFit.cover,
          // ignore: avoid_redundant_argument_values
          cache: true,
          cacheMaxAge: cacheMaxAge ?? const Duration(days: 90),
          loadStateChanged: (ExtendedImageState state) {
            switch (state.extendedImageLoadState) {
              case LoadState.loading:
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              case LoadState.completed:
                return Image(
                  image: state.imageProvider,
                  height: size,
                  width: size,
                  fit: fit,
                );
              case LoadState.failed:
                return noImageWidget();
            }
          },
        );
      }
      return noImageWidget();
    }

    return ClipOval(
      child: Material(
        type: MaterialType.transparency,
        child: isLoading == true
            // ローディング中
            ? loadingWidget ??
                Center(
                  child: SizedBox(
                    width: size,
                    height: size,
                    child: const CupertinoActivityIndicator(),
                  ),
                )
            // ローディング後
            : image(),
      ),
    );
  }
}
