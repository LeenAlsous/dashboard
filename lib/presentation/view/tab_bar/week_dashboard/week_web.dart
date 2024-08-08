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
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            itemCount: totals.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => AnalysisContainer(total: totals[index]),
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                    height: height,
                    margin: EdgeInsets.all(margin),
                    color: Colors.green),
              ),
              Flexible(
                child: Container(
                    margin: EdgeInsets.all(margin),
                    height: height,
                    color: Colors.red),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                    margin: EdgeInsets.all(margin),
                    height: height,
                    color: Colors.green),
              ),
              Flexible(
                child: Container(
                    height: height,
                    margin: EdgeInsets.all(margin),
                    color: Colors.red),
              ),
              Flexible(
                child: Container(
                    margin: EdgeInsets.all(margin),
                    height: height,
                    color: Colors.blueAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
