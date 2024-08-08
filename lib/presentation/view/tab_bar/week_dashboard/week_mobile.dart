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
    return NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
      return [
        SliverToBoxAdapter(
          child: GridView.builder(
            itemCount: totals.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) => AnalysisContainer(total: totals[index]),
          ),
        )
      ];
    }, body: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          height: height,
          margin: EdgeInsets.all(margin),
          color: Colors.red,
        );
      },
    ));
  }
}
