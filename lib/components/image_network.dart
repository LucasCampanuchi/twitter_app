import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageNetwork extends StatelessWidget {
  final String url;
  final BoxFit? fit;

  const ImageNetwork({
    Key? key,
    required this.url,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      placeholder: (context, url) => Shimmer.fromColors(
        direction: ShimmerDirection.ltr,
        baseColor: Colors.grey,
        highlightColor: const Color.fromRGBO(247, 247, 247, 1.0),
        child: SizedBox.expand(
          child: Container(
            color: Colors.black,
          ),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
        color: Colors.black,
      ),
    );
  }
}
