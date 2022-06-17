import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/RecentFile.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  DataRow RecentFileDataRow(RecentFile fileInfo) {
    return DataRow(cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title),
            )
          ],
        ),
      ),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size.toString())),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PaddingAllDefault(),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadiusCircular10(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                )
              ],
              rows: List.generate(demoRecentFiles.length,
                  (index) => RecentFileDataRow(demoRecentFiles[index])),
            ),
          ),
        ],
      ),
    );
  }
}
