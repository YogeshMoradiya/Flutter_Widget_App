import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titles=const TextStyle(fontStyle: FontStyle.italic,fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TableWidget'),
        backgroundColor: Colors.grey,
      ),
      body: DataTable(columns: <DataColumn>[
        DataColumn(label: Text('Name',
          style: titles,
        ),
        ),
        DataColumn(label: Text('Age',
          style: titles,
        ),
        ),
        DataColumn(label: Text('color',
          style: titles,
        ),
        ),
      ],
          rows: const <DataRow>[
           DataRow(cells: <DataCell>[DataCell(Text('Max')),
                                     DataCell(Text('21')),
                                     DataCell(Text('red')),
           ],),
            DataRow(cells: <DataCell>[DataCell(Text('roy')),
              DataCell(Text('25')),
              DataCell(Text('black')),
            ],),
            DataRow(cells: <DataCell>[DataCell(Text('rio')),
              DataCell(Text('31')),
              DataCell(Text('white')),
            ],),
          ]),
    );
  }
}