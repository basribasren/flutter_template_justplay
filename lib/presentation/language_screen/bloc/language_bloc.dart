import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/language_item_model.dart';import 'package:basri_s_application23/presentation/language_screen/models/language_model.dart';part 'language_event.dart';part 'language_state.dart';class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {LanguageBloc(LanguageState initialState) : super(initialState) { on<LanguageInitialEvent>(_onInitialize); }

List<LanguageItemModel> fillLanguageItemList() { return List.generate(7, (index) => LanguageItemModel()); } 
_onInitialize(LanguageInitialEvent event, Emitter<LanguageState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(languageModelObj: state.languageModelObj?.copyWith(languageItemList: fillLanguageItemList()))); } 
 }
