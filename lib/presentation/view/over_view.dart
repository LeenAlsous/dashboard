import 'package:dashboard/presentation/view/tab_bar/hours.dart';
import 'package:dashboard/presentation/view/tab_bar/month.dart';
import 'package:dashboard/presentation/view/tab_bar/week.dart';
import 'package:dashboard/presentation/view/tab_bar/year.dart';
import 'package:dashboard/presentation/widgets/drawer_view.dart';
import 'package:flutter/material.dart';

class OverView extends StatefulWidget {
  const OverView({Key? key}) : super(key: key);

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: LayoutBuilder(
        builder: (context, constraints) => Scaffold(
          drawer: constraints.maxWidth < 1050 ? const DrawerView() : null,
          body: Container(
            color: const Color(0xFFFAFAFA),
            child: Column(children: [
              AppBar(
                backgroundColor: const Color(0xFFFAFAFA),
                title: const Text('Dashboard'),
                actions: [
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.1,
                      // todo: change the place of text field
                      child: TextFormField()),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  const Icon(Icons.notifications),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  const CircleAvatar()
                ],
              ),
              const TabBar(tabs: [
                Text('last 24 hours'),
                Text('last week'),
                Text('last month'),
                Text('last year'),
              ]),
              const Expanded(
                child: TabBarView(children: [
                  HoursDashboard(),
                  WeekDashboard(),
                  MonthDashboard(),
                  YearDashboard(),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
