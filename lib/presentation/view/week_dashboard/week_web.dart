import 'package:dashboard/dummy/dummy_data.dart';
import 'package:dashboard/presentation/widgets/analysis_container.dart';
import 'package:flutter/material.dart';

class WebWeekDashboard extends StatefulWidget {
  const WebWeekDashboard({Key? key}) : super(key: key);

  @override
  State<WebWeekDashboard> createState() => _WebWeekDashboardState();
}

class _WebWeekDashboardState extends State<WebWeekDashboard> {
  double margin = 5;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height * 0.3;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: totals.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
              children: [AnalysisContainer(total: totals[index])],
            ),
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                  height: height, margin: EdgeInsets.all(margin), color: Colors.green),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.all(margin), height: height, color: Colors.red),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.all(margin), height: height, color: Colors.green),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  height: height, margin: EdgeInsets.all(margin), color: Colors.red),
            ),
            Flexible(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.all(margin),
                  height: height,
                  color: Colors.blueAccent),
            ),
          ],
        ),
      ],
    );
  }
}
