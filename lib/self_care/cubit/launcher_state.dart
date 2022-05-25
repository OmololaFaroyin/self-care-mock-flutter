import 'package:equatable/equatable.dart';

enum LaunchEmailStatus { initial, loading, success, failure }

enum LaunchPhoneCallStatus { initial, loading, success, failure }

class LauncherState extends Equatable {
  const LauncherState({
    this.emailStatus = LaunchEmailStatus.initial,
    this.phoneCallStatus = LaunchPhoneCallStatus.initial,
  });
  final LaunchEmailStatus emailStatus;
  final LaunchPhoneCallStatus phoneCallStatus;

  @override
  List<Object> get props => [emailStatus, phoneCallStatus];

  LauncherState copyWith({
    LaunchEmailStatus? emailStatus,
    LaunchPhoneCallStatus? phoneCallStatus,
  }) {
    return LauncherState(
      emailStatus: emailStatus ?? this.emailStatus,
      phoneCallStatus: phoneCallStatus ?? this.phoneCallStatus,
    );
  }
}
