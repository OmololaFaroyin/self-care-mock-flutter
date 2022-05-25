import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:self_care_mock/core/core.dart';
import 'package:self_care_mock/self_care/self_care.dart';

class SelfCareScreen extends StatefulWidget {
  const SelfCareScreen({Key? key}) : super(key: key);

  @override
  State<SelfCareScreen> createState() => _SelfCareScreenState();
}

class _SelfCareScreenState extends State<SelfCareScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => LauncherCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.more_vert, color: AppColors.grey),
          title: Text(appTitle, style: theme.textTheme.headline6),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: SelfCareTabBar(tabController: _tabController),
          ),
          actions: appBarActions,
        ),
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              FaqListViewTab(),
              CallForHelpTab(),
            ],
          ),
        ),
        floatingActionButton: Visibility(
          visible: _tabController.index == 1 ? false : true,
          maintainState: true,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _tabController.index = 1;
              });
            },
            child: const Icon(Icons.chat_rounded,
                color: AppColors.white, size: 32),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

const appBarActions = [
  Icon(FontAwesomeIcons.user, size: 22.0, color: AppColors.grey),
  Padding(
    padding: EdgeInsets.only(right: 25.0),
    child: Icon(Icons.arrow_drop_down, size: 22.0, color: AppColors.grey),
  ),
];
