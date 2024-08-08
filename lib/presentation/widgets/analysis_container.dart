import 'package:dashboard/business_logic/models/total.dart';
import 'package:flutter/material.dart';

class AnalysisContainer extends StatelessWidget {
  final Total total;
  const AnalysisContainer({Key? key, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              total.icon,
              Text(total.title)
            ],
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('\$${total.totalNumber}'),
              Text('${total.percentage}%', style: TextStyle(color: total.percentage > 0 ? Colors.green : Colors.red),),
            ],
          )
        ],
      ),
    );
  }
}
