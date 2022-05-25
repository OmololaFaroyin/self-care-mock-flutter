import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_care_mock/self_care/self_care.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherCubit extends Cubit<LauncherState> {
  LauncherCubit() : super(const LauncherState());

  Future<void> onLaunchEmail(email) async {
    //final url = "mailto:$email?subject=$subject&body=$body";
    emit(state.copyWith(emailStatus: LaunchEmailStatus.loading));
    if (await canLaunchUrl(Uri.parse('mailto:$email'))) {
      await launchUrl(Uri.parse('mailto:$email'));
      emit(state.copyWith(emailStatus: LaunchEmailStatus.success));
    } else {
      emit(state.copyWith(emailStatus: LaunchEmailStatus.failure));
    }
  }

  Future<void> onLaunchPhoneCall(phoneCallUrl) async {
    emit(state.copyWith(phoneCallStatus: LaunchPhoneCallStatus.loading));
    if (await canLaunchUrl(Uri(
      scheme: 'tel',
      path: phoneCallUrl,
    ))) {
      await launchUrl((Uri(
        scheme: 'tel',
        path: phoneCallUrl,
      )));
      emit(state.copyWith(phoneCallStatus: LaunchPhoneCallStatus.success));
    } else {
      emit(state.copyWith(phoneCallStatus: LaunchPhoneCallStatus.failure));
    }
  }
}
