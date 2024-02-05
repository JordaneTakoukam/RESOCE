import 'package:flutter/material.dart';
import 'package:resoce/global_widgets/loader/loader.dart';

class LoadingPage extends StatelessWidget {
  final bool pageLoading;
  const LoadingPage({super.key, required this.pageLoading});

  @override
  Widget build(BuildContext context) {
    return pageLoading
        ? Container(
            color: Colors.grey.withOpacity(.5),
            width: double.infinity,
            height: double.infinity,
            child: const Center(
              child: Loader(),
            ),
          )
        : const SizedBox.shrink();
  }
}
