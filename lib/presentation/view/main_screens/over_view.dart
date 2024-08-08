import 'package:dashboard/helper/screen_sizes.dart';
import 'package:dashboard/presentation/view/tab_bar/hours.dart';
import 'package:dashboard/presentation/view/tab_bar/month.dart';
import 'package:dashboard/presentation/view/tab_bar/week_dashboard/week.dart';
import 'package:dashboard/presentation/view/tab_bar/year.dart';
import 'package:dashboard/presentation/widgets/drawer_widget.dart';
import 'package:dashboard/presentation/widgets/drop_down.dart';
import 'package:flutter/material.dart';

class OverView extends StatefulWidget {
  const OverView({Key? key}) : super(key: key);

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = ScreenSizes.isDesktop(context);
    bool isMobile = ScreenSizes.isMobile(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: !isDesktop ? const DrawerWidget() : null,
        body: Container(
          color: const Color(0xFFFAFAFA),
          child: Column(children: [
            AppBar(
              backgroundColor: const Color(0xFFFAFAFA),
              title: const Text('Dashboard'),
              actions: [
                !isMobile
                    ? SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        child: TextFormField(
                          decoration: const InputDecoration(hintText: 'Search', focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFE4E4E4)))),
                        ))
                    : Container(),
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
            isMobile
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Search',
                            hintMaxLines: 1,
                            border:
                                OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE4E4E4))),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE4E4E4)))
                        )),
                  )
                : Container(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.02,
            ),
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: TabBar(tabs: [
                    Text('last week'),
                    Text('last 24 hours'),
                    Text('last month'),
                    Text('last year'),
                  ]),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.01,
                ),
                !isMobile ? const DropDown() : const Icon(Icons.filter_alt)
              ],
            ),
            const Expanded(
              child: TabBarView(children: [
                WeekDashboard(),
                HoursDashboard(),
                MonthDashboard(),
                YearDashboard(),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
