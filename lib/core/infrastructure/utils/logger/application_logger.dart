import 'package:ariannapp/core/infrastructure/utils/logger/custom_logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodApplicationLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (provider.name == null) return;
    ApplicationLogger.instance.logApplicationEvent(newValue);
  }
}
