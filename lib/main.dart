import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TableDemoScreen(),
    );
  }
}

class TableDemoScreen extends StatefulWidget {
  const TableDemoScreen({super.key});

  @override
  TableDemoScreenState createState() => TableDemoScreenState();
}

class TableDemoScreenState extends State<TableDemoScreen> {
  int _rows = 10;
  String _tableType = 'Standard Table';

  final List<int> _rowOptions = [10, 50, 100, 500, 1000, 3000];
  final List<String> _tableOptions = [
    'Standard Table',
    'Two Dimensional Scrollables',
    'DataTable2'
  ];

  List<Map<String, String>> _generateData(int count) {
    return List.generate(
        count,
        (index) => {
              'ID': '${index + 1}',
              'Name': 'Item ${index + 1}',
              'Value': (index * 10).toString(),
            });
  }

  @override
  Widget build(BuildContext context) {
    final data = _generateData(_rows);
    return Scaffold(
      appBar: AppBar(title: Text('Table Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<int>(
                  value: _rows,
                  items: _rowOptions
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text('$e rows')))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _rows = value;
                      });
                    }
                  },
                ),
                DropdownButton<String>(
                  value: _tableType,
                  items: _tableOptions
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _tableType = value;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: _buildTable(data),
          ),
        ],
      ),
    );
  }

  Widget _buildTable(List<Map<String, String>> data) {
    switch (_tableType) {
      case 'Two Dimensional Scrollables':
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: _buildColumns(),
              rows: _buildRows(data),
            ),
          ),
        );
      case 'DataTable2':
        return DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: _buildColumns(),
          rows: _buildRows(data),
        );
      default:
        return SingleChildScrollView(
          child: DataTable(
            columns: _buildColumns(),
            rows: _buildRows(data),
          ),
        );
    }
  }

  List<DataColumn> _buildColumns() {
    return [
      DataColumn(label: Text('ID')),
      DataColumn(label: Text('Name')),
      DataColumn(label: Text('Value')),
    ];
  }

  List<DataRow> _buildRows(List<Map<String, String>> data) {
    return data.map((item) {
      return DataRow(cells: [
        DataCell(Text(item['ID']!)),
        DataCell(Text(item['Name']!)),
        DataCell(Text(item['Value']!)),
      ]);
    }).toList();
  }
}
