import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_bloc_practice/domain/entities/top_headline_entity.dart';
import 'dart:async';
import 'package:todo_bloc_practice/domain/repository/news_remote_repository.dart';
import 'package:todo_bloc_practice/services/connection_status_service.dart';
import 'package:todo_bloc_practice/services/storage_service.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> with ConnectionStatusMixin {
  final NewsRemoteRepository _newsRemoteRepository;
  final StorageService _storageService;

  NewsCubit({
    required NewsRemoteRepository newsRemoteRepository,
    required StorageService storageService,
  })  : _newsRemoteRepository = newsRemoteRepository,
        _storageService = storageService,
        super(NewsInitialState());

  Future<void> getNews({required String currentCategory}) async {
    emit(GetNewsState());
    try {
      if (await isConnected()) {
        final topTitlesModel =
            await _getTopTitles(currentCategory: currentCategory);
        emit(NewsLoadedState(topHeadlineEntity: topTitlesModel));
      } else {
        emit(const NewsNoNetworkState(error: 'Check internet connection'));
      }
    } catch (e) {
      emit(NewsErrorState(error: e.toString()));
    }
  }

  Future<TopHeadlineEntity> _getTopTitles(
          {required String currentCategory}) async =>
      await _newsRemoteRepository.getTopHeadlines(
        category: currentCategory,
        countryCode: await _storageService.getLocalRegion() ?? 'us',
      );
}
