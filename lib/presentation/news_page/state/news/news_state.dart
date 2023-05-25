part of 'news_cubit.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsInitialState extends NewsState {}

class NewsGetState extends NewsState {}

class NewsLoadedState extends NewsState {
  final TopHeadlineEntity topHeadlineEntity;
  const NewsLoadedState({required this.topHeadlineEntity});
}

class NewsErrorState extends NewsState {
  final String error;
  const NewsErrorState({required this.error});
}

class NewsNoNetworkState extends NewsState {
  final String error;
  const NewsNoNetworkState({required this.error});
}
