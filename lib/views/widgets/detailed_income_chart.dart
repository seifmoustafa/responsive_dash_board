import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

/// A stateful widget that displays a detailed income chart.
class DetailedIncomChart extends StatefulWidget {
  /// Creates a new instance of [DetailedIncomChart].
  const DetailedIncomChart({super.key});

  @override
  State<DetailedIncomChart> createState() => _DetailedIncomChartState();
}

/// The state of [DetailedIncomChart].
class _DetailedIncomChartState extends State<DetailedIncomChart> {
  /// The index of the currently active section in the pie chart.
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    /// Returns a pie chart with an aspect ratio of 1.
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  /// Returns the chart data for the pie chart.
  PieChartData getChartData() {
    return PieChartData(
      /// Enables touch events on the pie chart.
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          /// Updates the active index when a section is touched.
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),

      /// The space between sections in the pie chart.
      sectionsSpace: 0,

      /// The sections of the pie chart.
      sections: [
        PieChartSectionData(
          /// The title position offset for the first section.
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,

          /// The title style for the first section.
          titleStyle: activeIndex == 0
              ? null
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),

          /// The radius of the first section.
          radius: activeIndex == 0 ? 60 : 50,

          /// The value of the first section.
          value: 40,

          /// The title of the first section.
          title: activeIndex == 0 ? 'Design service' : '40%',

          /// The color of the first section.
          color: const Color(0xff208bc7),
        ),
        PieChartSectionData(
          /// The title position offset for the second section.
          titlePositionPercentageOffset: activeIndex == 1 ? 2.1 : null,

          /// The title style for the second section.
          titleStyle: activeIndex == 1
              ? null
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),

          /// The radius of the second section.
          radius: activeIndex == 1 ? 60 : 50,

          /// The title of the second section.
          title: activeIndex == 1 ? 'Design product' : '25%',

          /// The value of the second section.
          value: 25,

          /// The color of the second section.
          color: const Color(0xff4db7f2),
        ),
        PieChartSectionData(
          /// The title position offset for the third section.
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,

          /// The title style for the third section.
          titleStyle: activeIndex == 2
              ? null
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),

          /// The radius of the third section.
          radius: activeIndex == 2 ? 60 : 50,

          /// The title of the third section.
          title: activeIndex == 2 ? 'Priduct royalti' : '20%',

          /// The value of the third section.
          value: 20,

          /// The color of the third section.
          color: const Color(0xff064060),
        ),
        PieChartSectionData(
          /// The title position offset for the fourth section.
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,

          /// The title style for the fourth section.
          titleStyle: activeIndex == 3
              ? null
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),

          /// The radius of the fourth section.
          radius: activeIndex == 3 ? 60 : 50,

          /// The title of the fourth section.
          title: activeIndex == 3 ? 'Other' : '22%',

          /// The value of the fourth section.
          value: 22,

          /// The color of the fourth section.
          color: const Color(0xffe2decd),
        ),
      ],
    );
  }
}
