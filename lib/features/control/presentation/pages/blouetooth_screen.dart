// import 'package:flutter/material.dart';
// import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BluetoothScreen(),
//     );
//   }
// }
//
// class BluetoothScreen extends StatefulWidget {
//   @override
//   _BluetoothScreenState createState() => _BluetoothScreenState();
// }
//
// class _BluetoothScreenState extends State<BluetoothScreen> {
//   List<BluetoothDevice> _devices = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _getPairedDevices();
//   }
//
//   Future<void> _getPairedDevices() async {
//     List<BluetoothDevice> devices = [];
//     try {
//       devices = await FlutterBluetoothSerial.instance.getBondedDevices();
//     } catch (e) {
//       print("Error: $e");
//     }
//
//     setState(() {
//       _devices = devices;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bluetooth Devices'),
//       ),
//       body: ListView.builder(
//         itemCount: _devices.length,
//         itemBuilder: (context, index) {
//           BluetoothDevice device = _devices[index];
//           return ListTile(
//             title: Text(device.name),
//             subtitle: Text(device.address),
//             onTap: () {
//               _connectToDevice(device);
//             },
//           );
//         },
//       ),
//     );
//   }
//
//   Future<void> _connectToDevice(BluetoothDevice device) async {
//     try {
//       await FlutterBluetoothSerial.instance.connect(device);
//       print('Connected to ${device.name}');
//       // Now you can send/receive data with the connected device
//     } catch (e) {
//       print("Error: $e");
//     }
//   }
// }
