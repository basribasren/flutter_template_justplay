import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application23/presentation/delete_popup_dialog/models/delete_popup_model.dart';
part 'delete_popup_event.dart';
part 'delete_popup_state.dart';

class DeletePopupBloc extends Bloc<DeletePopupEvent, DeletePopupState> {
  DeletePopupBloc(DeletePopupState initialState) : super(initialState) {
    on<DeletePopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DeletePopupInitialEvent event,
    Emitter<DeletePopupState> emit,
  ) async {}
}
