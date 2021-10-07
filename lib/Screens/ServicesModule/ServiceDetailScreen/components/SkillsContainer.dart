import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joran_app/Models/SkillsModel.dart';

class SkillsContainer extends StatefulWidget {
  final List<Skills> skills;

  const SkillsContainer({Key? key, required this.skills}) : super(key: key);

  @override
  _SkillsContainerState createState() => _SkillsContainerState();
}

class _SkillsContainerState extends State<SkillsContainer> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Center(
                      child: Text(
                        "Skills Presented",
                        style: TextStyle(
                            fontFamily: "NunitoSans",
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              height: size.height * 0.225,
              width: size.width * 0.9,
              // decoration: BoxDecoration(
              //   color: Colors.white.withOpacity(0.5)
              // ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: AspectRatio(
                    aspectRatio: 1.5,
                    child: BarChart(mainBarData())
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
      int x,
      double y, {
        bool isTouched = false,
        Color barColor = Colors.white,
        double width = 20,
        List<int> showTooltips = const [],
      }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          colors: isTouched ? [Color(0XFF45BBA1)] : [Color(0XFF9184CA)],
          width: width,
          borderSide: isTouched
              ? BorderSide(color: Colors.transparent, width: 0)
              : BorderSide(color: Colors.transparent, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 100,
            colors: [Colors.transparent],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(widget.skills.length, (i) {
    return makeGroupData(i, widget.skills[i].proficiency, isTouched: i == touchedIndex);
  });

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay = widget.skills[group.x.toInt()].name;
              return BarTooltipItem(
                weekDay + '\n',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: (rod.y - 1).toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (context, value) =>
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
            margin: 16,
            getTitles: (double value) {
              return widget.skills[value.toInt()].name.substring(0, 1);
            }
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
      gridData: FlGridData(show: false),
    );
  }


}
