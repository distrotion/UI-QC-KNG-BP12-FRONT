import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ControlChart02 extends StatelessWidget {
  ControlChart02({
    Key? key,
    this.upper,
    this.data,
    this.data2,
    this.data3,
    this.data4,
    this.under,
    this.data_2,
    this.data2_2,
    this.data3_2,
    this.data_3,
    this.data2_3,
    this.data3_3,
    this.data_4,
    this.data2_4,
    this.data3_4,
    this.datedata,
  }) : super(key: key);

  List<FlSpot>? upper;
  List<FlSpot>? data;
  List<FlSpot>? data2;
  List<FlSpot>? data3;
  List<FlSpot>? data4;
  List<FlSpot>? under;
  Map<String, String>? datedata;

  List<FlSpot>? data_2;
  List<FlSpot>? data2_2;
  List<FlSpot>? data3_2;

  List<FlSpot>? data_3;
  List<FlSpot>? data2_3;
  List<FlSpot>? data3_3;

  List<FlSpot>? data_4;
  List<FlSpot>? data2_4;
  List<FlSpot>? data3_4;

  Widget bottomTitleWidgets(
      double value, TitleMeta meta, Map<String, String> datedatain) {
    const style = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      angle: 0,
      // child: Text(
      //   value.toInt().toString(),
      //   style: style,
      // ),
      child: SizedBox(
        width: 20,
        child: Text(
          value.toString(),
          // datedatain[value.toInt().toString()] != null
          //     ? '${datedatain[value.toInt().toString()]}'
          //     : "",
          // data != null ? '${data![(value * 10).toInt() - 1].x}' : "",
          // "",
          style: style,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '${value}',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<FlSpot> _upper = upper ?? [];
    List<FlSpot> _data = data ?? [];
    List<FlSpot> _under = under ?? [];
    Map<String, String> _datedata = datedata ?? {};

    TextEditingController controller = TextEditingController();
    ScrollController controllerReport = ScrollController();

    return AspectRatio(
      aspectRatio: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 18,
          top: 10,
          bottom: 4,
        ),
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(enabled: false),
            lineBarsData: [
              // LineChartBarData(
              //   spots: upper,
              //   isCurved: true,
              //   barWidth: 2,
              //   color: Colors.transparent,
              //   dotData: FlDotData(
              //     show: false,
              //   ),
              // ),
              LineChartBarData(
                spots: data ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.blueAccent,
                dotData: FlDotData(
                  show: true,
                ),
              ),
              LineChartBarData(
                spots: data2 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.black,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              LineChartBarData(
                spots: data3 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.blueAccent,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              LineChartBarData(
                spots: data4 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.black,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              LineChartBarData(
                spots: _under,
                isCurved: false,
                barWidth: 2,
                color: Colors.black,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              //--------------------------------
              LineChartBarData(
                spots: data_2 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.green,
                dotData: FlDotData(
                  show: true,
                ),
              ),
              LineChartBarData(
                spots: data2_2 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.black,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              LineChartBarData(
                spots: data3_2 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.green,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              //----------------------------------
              LineChartBarData(
                spots: data_3 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.red,
                dotData: FlDotData(
                  show: true,
                ),
              ),
              LineChartBarData(
                spots: data2_3 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.black,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              LineChartBarData(
                spots: data3_3 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.red,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              //--------------------------------------
              LineChartBarData(
                spots: data_4 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.pink,
                dotData: FlDotData(
                  show: true,
                ),
              ),
              LineChartBarData(
                spots: data2_4 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.black,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              LineChartBarData(
                spots: data3_4 ?? [],
                show: true,
                isCurved: false,
                barWidth: 2,
                color: Colors.pink,
                dotData: FlDotData(
                  show: false,
                ),
              ),
              //--------------------------------------
            ],
            betweenBarsData: [
              BetweenBarsData(
                fromIndex: 0,
                toIndex: 1,
                color: Colors.transparent,
              )
            ],
            minY: _under.length > 0
                ? _under[0].y
                //  - (_under[_under.length - 1].y) * 0.01
                : 0,
            maxY: _upper.length > 0
                ? _upper[_upper.length - 1].y
                // +
                //     (_upper[_upper.length - 1].y) * 0.01
                : 0,
            minX: _under.length > 0 ? _under[0].x : 0,
            maxX: _upper.length > 0 ? _upper[_upper.length - 1].x : 0,
            borderData: FlBorderData(
              show: false,
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    interval: 0.1,
                    getTitlesWidget: (value, meta) {
                      // print(value);
                      print(value);
                      print(meta);
                      return bottomTitleWidgets(value, meta, _datedata);
                    }),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: leftTitleWidgets,
                  interval: 100,
                  reservedSize: 36,
                ),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            gridData: FlGridData(
              show: true,

              // drawVerticalLine: false,
              horizontalInterval: 100,
              // checkToShowHorizontalLine: (double value) {
              //   return value == 1 || value == 6 || value == 4 || value == 5;
              // },
            ),
          ),
        ),
      ),
    );
  }
}
