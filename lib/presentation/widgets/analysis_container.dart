import 'package:dashboard/business_logic/total.dart';
import 'package:dashboard/helper/text_scaler.dart';
import 'package:flutter/material.dart';

class AnalysisContainer extends StatelessWidget {
  final Total total;
  const AnalysisContainer({Key? key, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width / 4,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).height * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  total.icon,
                  Text(total.title, textScaler:
                  TextScaler.linear(ScaleSize.textScaleFactor(context)))
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('\$${total.totalNumber}', textScaler:
                  TextScaler.linear(ScaleSize.textScaleFactor(context))),
                  Text('${total.percentage}%', textScaler:
                  TextScaler.linear(ScaleSize.textScaleFactor(context)), style: TextStyle(color: total.percentage > 0 ? Colors.green : Colors.red),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
