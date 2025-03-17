import 'package:flutter/material.dart';

class OverlayLoaderManager {
  OverlayLoaderManager._();

  static final _singleton = OverlayLoaderManager._();
  static OverlayLoaderManager get instance => _singleton;

  bool isLoading = false;

  final _entry = OverlayEntry(
    builder: (context) => FocusScope(
      autofocus: true,
      canRequestFocus: true,
      child: SizedBox.expand(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.5),
            border: const Border.fromBorderSide(BorderSide.none),
          ),
          child: const Center(child: CircularProgressIndicator()),
        ),
      ),
    ),
  );

  void showLoader(BuildContext context) {
    if (isLoading) return;
    isLoading = true;
    Overlay.of(context, rootOverlay: true).insert(_entry);
  }

  void hideLoader() {
    if (!isLoading) return;
    _entry.remove();
    isLoading = false;
  }
}
