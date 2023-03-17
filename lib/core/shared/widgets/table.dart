import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  final List<String> columns;
  final List rows;
  const TableWidget({super.key, required this.columns, required this.rows});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: DataTable(
            dividerThickness: 0,
            columns: [
              for (var column in columns)
                DataColumn(
                  label: Text(column),
                ),
            ],
            rows: rows.map((item) {
              var index = rows.indexOf(item);
              return DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.08);
                    }
                    if (index.isEven) {
                      return Colors.grey.withOpacity(0.1);
                    }
                    return null;
                  },
                ),
                cells: [
                  for (var column in columns)
                    DataCell(
                      Text(item[column].toString()),
                      onTap: item['onTap'] ?? () {},
                    ),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
