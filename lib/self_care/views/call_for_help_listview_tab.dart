import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:self_care_mock/core/core.dart';
import 'package:self_care_mock/self_care/self_care.dart';

class CallForHelpTab extends StatelessWidget {
  const CallForHelpTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<LauncherCubit, LauncherState>(
      listener: (context, state) => listener(context, state, theme),
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SendMail(maxLines: 10),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 32),
              padding: const EdgeInsets.all(12.0),
              decoration: kHelpContainer,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextButton(
                              onPressed: () {
                                String email = 'help@dukka.com';

                                context
                                    .read<LauncherCubit>()
                                    .onLaunchEmail(email);
                              },
                              child: Text('help@dukka.com',
                                  style: theme.textTheme.headline5)),
                        ),
                        Expanded(
                          child: Text('Get quick support for your account',
                              style: theme.textTheme.subtitle1?.copyWith(
                                color: AppColors.grey,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            String tel = '+2349155991334';
                            context
                                .read<LauncherCubit>()
                                .onLaunchPhoneCall(tel);
                          },
                          child: Text('+(234)915 599 1334',
                              style: theme.textTheme.headline5),
                        ),
                        Text(
                          'Mon to Fri, 7:00am - 5:30pm',
                          style: theme.textTheme.subtitle1?.copyWith(
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}

void listener(context, state, theme) {
  if (state.emailStatus == LaunchEmailStatus.failure) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text("Can't launch device email app",
              style: theme.textTheme.subtitle1.copyWith(
                color: AppColors.white,
               
              )),
        ),
      );
  }
  if (state.phoneCallStatus == LaunchPhoneCallStatus.failure) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            "Can't launch device phone call app",
            style: theme.textTheme.subtitle1.copyWith(
              color: AppColors.white,
             
            ),
          ),
        ),
      );
  }
}
