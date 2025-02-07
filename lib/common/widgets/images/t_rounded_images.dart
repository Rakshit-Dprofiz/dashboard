// import 'dart:io';
// import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';
//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:trashee_dashboard/utils/constants/sizes.dart';
//
// class TRoundedImages extends StatelessWidget {
//   const TRoundedImages({
//     super.key,
//     this.image,
//     this.file,
//     this.border,
//     this.width = 56,
//     this.height = 56,
//     this.memoryImage,
//     this.overlaysColor,
//     required this.imageType,
//     this.backgroundColor,
//     this.padding = TSizes.sm,
//     this.margin,
//     this.fit = BoxFit.contain,
//     this.applyImageRadius = true,
//     this.borderRadius = TSizes.md,
//   });
//   final bool applyImageRadius;
//   final BoxBorder? border;
//   final double borderRadius;
//   final BoxFit? fit;
//   final String? image;
//   final File? file;
//   final ImageType imageType;
//   final Color? overlaysColor;
//   final Color? backgroundColor;
//   final Uint8List? memoryImage;
//   final double width, height, padding;
//   final double? margin;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       width: width,
//       margin: margin != null ? EdgeInsets.all(margin!) : null,
//       padding: EdgeInsets.all(padding),
//       decoration: BoxDecoration(
//           border: border,
//           color: backgroundColor,
//           borderRadius: BorderRadius.circular(borderRadius)),
//       child: _buildImageWidget(),
//     );
//   }
//
//   Widget _buildImageWidget() {
//     Widget imageWidget;
//     switch (imageType) {
//       case ImageType.network:
//         imageWidget = _buildNetworkWidget();
//         break;
//       case ImageType.memory:
//         imageWidget = _buildMemoryImage();
//         break;
//       case ImageType.file:
//         imageWidget = _buildFileImage();
//         break;
//       case ImageType.asset:
//         imageWidget = _buildAssetImage();
//         break;
//     }
//     // Apply ClipReact directly to image widget
//     return ClipReact(
//       borderRadius: applyImageRadius
//           ? BorderRadius.circular(borderRadius)
//           : BorderRadius.zero,
//       child: imageWidget,
//     );
//   }
//
//   Widget _buildNetworkWidget() {
//     if (image != null) {
//       return CachedNetworkImage(
//         imageUrl: image!,
//         fit: fit,
//         color: overlaysColor,
//         errorWidget: (context, url, error) => const Icon(Icons.error),
//         progressIndicatorBuilder: (context, url, downloadProgress) =>
//             TShimmerEffect(widget: width, height: height),
//       );
//     } else {
//       return Container();
//     }
//   }
//
//   // function to build the asset image widget
//   Widget _buildFileImage() {
//     if (file != null) {
//       return Image(
//           fit: fit,
//           color: overlaysColor,
//           image: FileImage(
//             (file!),
//           ));
//     } else {
//       return Container();
//     }
//   }
//
//   // function to build the asset image widget
//   Widget _buildAssetImage() {
//     if (image != null) {
//       return Image(
//           fit: fit,
//           color: overlaysColor,
//           image: AssetImage(
//             (image!),
//           ));
//     } else {
//       return Container();
//     }
//   }
// }




import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trashee_dashboard/utils/constants/sizes.dart';

/// Enum to define different types of images
enum ImageType { network, memory, file, asset }

class TRoundedImages extends StatelessWidget {
  const TRoundedImages({
    super.key,
    this.image,
    this.file,
    this.border,
    this.width = 56,
    this.height = 56,
    this.memoryImage,
    this.overlaysColor,
    required this.imageType,
    this.backgroundColor,
    this.padding = TSizes.sm,
    this.margin,
    this.fit = BoxFit.contain,
    this.applyImageRadius = true,
    this.borderRadius = TSizes.md,
  });

  final bool applyImageRadius;
  final BoxBorder? border;
  final double borderRadius;
  final BoxFit? fit;
  final String? image;
  final File? file;
  final ImageType imageType;
  final Color? overlaysColor;
  final Color? backgroundColor;
  final Uint8List? memoryImage;
  final double width, height, padding;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin != null ? EdgeInsets.all(margin!) : null,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: _buildImageWidget(),
    );
  }

  Widget _buildImageWidget() {
    Widget imageWidget;
    switch (imageType) {
      case ImageType.network:
        imageWidget = _buildNetworkWidget();
        break;
      case ImageType.memory:
        imageWidget = _buildMemoryImage();
        break;
      case ImageType.file:
        imageWidget = _buildFileImage();
        break;
      case ImageType.asset:
        imageWidget = _buildAssetImage();
        break;
    }
    // Apply ClipRRect directly to image widget
    return ClipRRect(
      borderRadius: applyImageRadius
          ? BorderRadius.circular(borderRadius)
          : BorderRadius.zero,
      child: imageWidget,
    );
  }

  // Function to build the network image widget
  Widget _buildNetworkWidget() {
    if (image != null) {
      return CachedNetworkImage(
        imageUrl: image!,
        fit: fit,
        color: overlaysColor,
        errorWidget: (context, url, error) => const Icon(Icons.error),
        progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
          width: width,
          height: height,
          child: CircularProgressIndicator(value: downloadProgress.progress),
        ),
      );
    } else {
      return Container();
    }
  }

  // Function to build the memory image widget
  Widget _buildMemoryImage() {
    if (memoryImage != null) {
      return Image.memory(
        memoryImage!,
        fit: fit,
        color: overlaysColor,
      );
    } else {
      return Container();
    }
  }

  // Function to build the file image widget
  Widget _buildFileImage() {
    if (file != null) {
      return Image.file(
        file!,
        fit: fit,
        color: overlaysColor,
      );
    } else {
      return Container();
    }
  }

  // Function to build the asset image widget
  Widget _buildAssetImage() {
    if (image != null) {
      return Image.asset(
        image!,
        fit: fit,
        color: overlaysColor,
      );
    } else {
      return Container();
    }
  }
}
