import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:math' as math;

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  Future<String> _randomNumber() async {
    await Future.delayed(const Duration(seconds: 1));
    return math.Random().nextInt(100).toString();
  }

  @override
  Future<String> build() async {
    return _randomNumber();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async => _randomNumber());
  }
}
