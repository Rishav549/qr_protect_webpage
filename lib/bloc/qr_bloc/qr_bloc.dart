library qr_bloc;

import 'package:bloc/bloc.dart';

import '../../models/error.dart';
import '../../models/userDetails.dart';
import '../../repo/details/details.dart';
import '../../utilities/logger.dart';

part 'qr_event.dart';

part 'qr_state.dart';

class QrBloc extends Bloc<QrEvent, QrState> {
  QrBloc() : super(QrInitialState()) {
    on<QRDataFetchEvent>(_fetch);
  }

  Future<void> _fetch(QRDataFetchEvent event, emit) async {
    emit(QrLoadingState());
    try {
      UserDetails? user = await detailsFetch(event.uid);
      emit(QrLoadedState(user: user!));
    } catch (e) {
      CustomLogger.error(e);
      emit(QrErrorState(
          error: ErrorModel(message: "Failed to Fetch Info", e: e)));
    }
  }
}
