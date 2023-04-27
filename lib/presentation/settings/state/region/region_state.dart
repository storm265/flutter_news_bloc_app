part of 'region_cubit.dart';

abstract class RegionState extends Equatable {
  final Country country;
  const RegionState({required this.country});

  @override
  List<Object> get props => [country];
}

class RegionInitialState extends RegionState {
  const RegionInitialState({ super.country =Country.us});
}

class RegionUpdatedState extends RegionState {
  const RegionUpdatedState({required super.country});
}
