import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:self_care_mock/self_care/self_care.dart';

class SelfCareTabBar extends StatefulWidget {
  const SelfCareTabBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);
  final TabController tabController;

  @override
  State<SelfCareTabBar> createState() => _SelfCareTabBarState();
}

class _SelfCareTabBarState extends State<SelfCareTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1.5),
      decoration: kTabContainerMainBorder,
      child: TabBar(
        onTap: (int indexSelected) {
          setState(() => indexSelected);
        },
        enableFeedback: true,
        controller: widget.tabController,
        isScrollable: true,
        labelPadding: kLabelPadding(widget.tabController.index),
        tabs: <Widget>[
          Tab(
              child: TabContainer(
            controllerIndex: widget.tabController.index,
            tabIndex: 0,
            icon: const Icon(FontAwesomeIcons.user, size: 22.0),
            text: helpFaqTabTitle,
          )),
          Tab(
              child: TabContainer(
            controllerIndex: widget.tabController.index,
            tabIndex: 1,
            icon: const Icon(Icons.headset_mic_outlined, size: 24.0),
            text: callForHelpTabTitle,
          )),
        ],
      ),
    );
  }
}

class TabContainer extends StatelessWidget {
  const TabContainer({
    Key? key,
    required this.controllerIndex,
    required this.tabIndex,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final int controllerIndex;
  final int tabIndex;
  final Widget icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: controllerIndex == tabIndex ? null : kTabContainerBorder,
      padding: controllerIndex == tabIndex ? null : kTabContainerPadding,
      child: Row(
        children: [
          Text(text),
          const SizedBox(width: 8),
          icon,
        ],
      ),
    );
  }
}
