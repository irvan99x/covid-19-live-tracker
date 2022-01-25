import 'package:covid_live_tracker/models/global_summary.dart';
import 'package:covid_live_tracker/utils/constants.dart';
import 'package:flutter/material.dart';

class GlobalStatistics extends StatelessWidget {
  final GlobalSummaryModel summary;

  const GlobalStatistics({
    Key key,
    this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard(
          "CONFIRMED",
          summary.totalConfirmed,
          summary.newConfirmed,
          kConfirmedColor,
        ),
        buildCard(
          "ACTIVE",
          summary.totalConfirmed - summary.totalRecovered - summary.totalDeaths,
          summary.newConfirmed - summary.newRecovered - summary.newDeaths,
          kActiveColor,
        ),
        buildCard(
          "RECOVERED",
          summary.totalRecovered,
          summary.newRecovered,
          kRecoveredColor,
        ),
        buildCard(
          "DEATH",
          summary.totalDeaths,
          summary.newDeaths,
          kDeathColor,
        )
      ],
    );
  }

  Widget buildCard(String title, int totalCount, int todayCount, Color color) {
    return Card(
      elevation: 1.0,
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      totalCount.toString().replaceAllMapped(
                            reg,
                            mathFunc,
                          ),
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      todayCount.toString().replaceAllMapped(
                            reg,
                            mathFunc,
                          ),
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
