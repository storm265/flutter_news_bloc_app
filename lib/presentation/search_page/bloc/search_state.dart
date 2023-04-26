part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitialState extends SearchState {
  const SearchInitialState();
}

class SearchLoadingState extends SearchState {
  const SearchLoadingState();
}

class SearchFetchedState extends SearchState {
  final EverythingEntity everythingEntity;
  const SearchFetchedState({required this.everythingEntity});
}
class SearchErrorState extends SearchState {
  final String errorMessage;
  const SearchErrorState({required this.errorMessage});
}

class SearchNoNetworkState extends SearchState {
  final String errorMessage;
  const SearchNoNetworkState({required this.errorMessage});
}
