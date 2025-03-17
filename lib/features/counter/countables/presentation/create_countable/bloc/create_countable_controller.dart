import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_countable_controller.g.dart';

@riverpod
class NewCountableController extends _$NewCountableController {
  @override
  CountableDataBuilder build() {
    return CountableDataBuilder();
  }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }
}
