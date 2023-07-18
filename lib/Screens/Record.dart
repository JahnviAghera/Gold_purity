// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   Future<Row> fetchRow() async {
//     final conn = await MySqlConnection.connect(ConnectionSettings(
//       host: 'your_host',
//       port: 3306, // or your MySQL port
//       user: 'your_username',
//       password: 'your_password',
//       db: 'your_database',
//     ));
//
//     Results result = await conn.query('SELECT * FROM your_table LIMIT 1');
//
//     if (result.isNotEmpty) {
//       return result.first;
//     }
//
//     await conn.close();
//     return null;
//   }
//
//   void fetchData() async {
//     try {
//       Row row = await fetchRow();
//       if (row != null) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => RecordPage(row: row),
//           ),
//         );
//       } else {
//         print('No data found.');
//       }
//     } catch (e) {
//       print('Error fetching data: $e');
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Text('Fetching data from MySQL...'),
//       ),
//     );
//   }
// }
//
// class RecordPage extends StatelessWidget {
//   final Row row;
//
//   const RecordPage({Key key, this.row}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Record Page'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Table(
//             border: TableBorder.all(width: 1.0, color: Colors.grey),
//             children: [
//               TableRow(
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Client ID'),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(row['client_id'].toString()),
//                     ),
//                   ),
//                 ],
//               ),
//               TableRow(
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('DAE'),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(row['dae'].toString()),
//                     ),
//                   ),
//                 ],
//               ),
//               TableRow(
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Time'),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(row['time'].toString()),
//                     ),
//                   ),
//                 ],
//               ),
//               TableRow(
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Temperature'),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(row['temperature'].toString()),
//                     ),
//                   ),
//                 ],
//               ),
//               TableRow(
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Humidity'),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(row['humidity'].toString()),
//                     ),
//                   ),
//                 ],
//               ),
//               TableRow(
//                 children: [
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Result'),
//                     ),
//                   ),
//                   TableCell(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(row['result'].toString()),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }