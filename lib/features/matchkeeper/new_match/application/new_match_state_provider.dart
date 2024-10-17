import 'package:ariannapp/features/matchkeeper/new_match/application/state/new_match_builder.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/game/game.dart';
import 'package:ariannapp/features/matchkeeper/shared/domain/model/team/team.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_match_state_provider.g.dart';

@riverpod
class StepperState extends _$StepperState {
  @override
  int build() => 0;

  void nextStep() {
    final newStep = state + 1;
    step = newStep;
  }

  void previousStep() {
    final newStep = state - 1;
    step = newStep;
  }

  set step(int value) => state = value;

  int get step => state;
}

@riverpod
bool canProceedStepper(CanProceedStepperRef ref) {
  final match = ref.watch(newMatchControllerProvider);
  final step = ref.watch(stepperStateProvider);
  if (step == 0 && match.game != null) return true;
  if (step == 1 && match.winningPoints != null) return true;
  if (step == 2) return true;
  return false;
}

@riverpod
class NewMatchController extends _$NewMatchController {
  @override
  MatchBuilder build() => MatchBuilder();

  void addTeam(Team team) {
    final teams = state.teams;
    state = state.copyWith(teams: [...teams, team]);
  }

  void removeTeam(Team team) {
    final teams = state.teams;
    state = state.copyWith(teams: teams.where((t) => t != team).toList());
  }

  void updateGame(Game? game) {
    state = state.copyWith(game: game, winningPoints: game?.standardWinningPonts);
  }

  void updateWinningPoints(int winningPoints) {
    state = state.copyWith(winningPoints: winningPoints);
  }

  void updateDoubleLife({required bool doubleLife}) {
    state = state.copyWith(doubleLife: doubleLife);
  }
}
