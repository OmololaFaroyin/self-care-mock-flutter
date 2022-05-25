import 'package:flutter/material.dart';
import 'package:self_care_mock/self_care/self_care.dart';

class FaqListViewTab extends StatelessWidget {
  const FaqListViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: faqList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 7.0),
            child: Card(
              child: ExpansionTile(
                title: Text(
                  faqList[index].q,
                  style: theme.textTheme.subtitle1,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(faqList[index].a,
                        style: theme.textTheme.bodyText1),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
