import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service/service.dart';

part 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  DiscoverCubit() : super(DiscoverInitial());

  Future<void> fetchVideos(String searchText) async {
    final items = await ApiService.instance?.fetchSearch(searchText);
    emit(DiscoverCompleted(items: items ?? []));
  }

  
}
