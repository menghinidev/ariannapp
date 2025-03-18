import 'package:ariannapp/core/core.dart';
import 'package:ariannapp/features/counter/shared/model/countable/countabledata.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_countable_controller.g.dart';

@riverpod
class NewCountableController extends _$NewCountableController {
  @override
  CountableDataBuilder build() {
    final email = ref.watch(authenticationStateProvider).valueOrNull?.email;
    return CountableDataBuilder(email: email ?? '');
  }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void toggleIsPublic() {
    state = state.copyWith(isPublic: !state.isPublic);
  }
}
