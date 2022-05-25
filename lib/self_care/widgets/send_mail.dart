import 'package:flutter/material.dart';
import 'package:self_care_mock/core/core.dart';
import 'package:self_care_mock/self_care/self_care.dart';

class SendMail extends StatelessWidget {
  const SendMail({
    Key? key,
    required this.maxLines,
  }) : super(key: key);

  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35.0, left: 32, right: 32),
      padding: const EdgeInsets.all(12.0),
      decoration: kSendMailContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 5,
            child: TextField(
              minLines: 2,
              maxLines: 10,
              decoration: InputDecoration.collapsed(
                hintText: "What will you like to send",
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(
                  Icons.send,
                  color: AppColors.primaryColor,
                  size: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
