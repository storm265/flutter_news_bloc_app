part of 'initial_cubit.dart';

abstract class InitialState extends Equatable {
  final int selectedIndex;
  const InitialState({required this.selectedIndex});

  @override
  List<Object> get props => [selectedIndex];
}

class InitialIndexState extends InitialState {
  const InitialIndexState({required super.selectedIndex});
}

class UpdateIndexState extends InitialState {
  const UpdateIndexState({required super.selectedIndex});
}
