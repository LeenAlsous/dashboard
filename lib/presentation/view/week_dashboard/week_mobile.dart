import 'package:dashboard/dummy/dummy_data.dart';
import 'package:dashboard/presentation/widgets/analysis_container.dart';
import 'package:flutter/material.dart';

class MobileWeekDashboard extends StatefulWidget {
  const MobileWeekDashboard({Key? key}) : super(key: key);

  @override
  State<MobileWeekDashboard> createState() => _MobileWeekDashboardState();
}

class _MobileWeekDashboardState extends State<MobileWeekDashboard> {
  double margin = 5;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height * 0.2;
    // todo: custom scroll view
    return Scaffold(
      body: Container(
        color: const Color(0xFFFAFAFA),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: ListView.builder(
                itemCount: totals.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  children: [AnalysisContainer(total: totals[index])],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  height: height,
                  margin: EdgeInsets.all(margin),
                  color: Colors.red,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
