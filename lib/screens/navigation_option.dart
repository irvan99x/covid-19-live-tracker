import 'package:covid_live_tracker/utils/constants.dart';
import 'package:flutter/material.dart';

class NavigationOption extends StatelessWidget {
  final String title;
  final bool selected;
  final Function() onSelected;

  const NavigationOption({
    Key key,
    this.title,
    this.selected,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: selected ? kPrimaryColor : Colors.grey[400],
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          selected
              ? Column(
                  children: [
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                          color: kPrimaryColor, shape: BoxShape.circle),
                    )
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
