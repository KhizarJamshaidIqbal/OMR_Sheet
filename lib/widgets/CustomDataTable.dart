// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:omrsheet_app/constants/colors.dart';

class CustomDataTable extends StatelessWidget {
  final List<String> columnNames;
  final List<List<String>> rowData;

  const CustomDataTable(
      {super.key, required this.columnNames, required this.rowData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        // ignore: deprecated_member_use
        dataRowHeight: 40,
        border: TableBorder.all(width: 1, color: globalColors.primaryColor),
        headingTextStyle: const TextStyle(
          fontSize: 14,
        ),
        headingRowColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return null;
          }
          return globalColors.primaryColor;
        }),
        columnSpacing: 18,
        columns: columnNames
            .map(
              (columnName) => DataColumn(
                label: SizedBox(
                  width: MediaQuery.of(context).size.width * .35,
                  child: Center(
                    child: Text(
                      columnName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
        rows: List.generate(
          100,
          (index) {
            final qNo = (index + 1).toString();
            final attempted = _generateRandomAttempted();
            return DataRow(
              cells: [
                DataCell(
                  Center(child: Text(qNo)),
                ),
                DataCell(
                  Center(child: Text(attempted)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String _generateRandomAttempted() {
    final random = Random();
    final attempted = ['A', 'B,F', 'C', 'D', 'E,G', '-'];
    final index = random.nextInt(attempted.length);
    return attempted[index];
  }
}
