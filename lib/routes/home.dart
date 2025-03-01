import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_proctet_web/utilities/logger.dart';

import '../bloc/qr_bloc/qr_bloc.dart';

class Home extends StatefulWidget {
  String? uid;

  Home({super.key, required this.uid});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CustomLogger.info(widget.uid!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) => QrBloc()..add(QRDataFetchEvent(uid: widget.uid!)),
      child: BlocConsumer<QrBloc, QrState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is QrLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is QrLoadedState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  // Code(data: "HII THIS IS THE QR", codeType: CodeType.qrCode())
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.network(state.user.image),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Table(
                      columnWidths: const {
                        0: FixedColumnWidth(120), // Adjust as needed
                        1: FlexColumnWidth(),
                      },
                      children: [
                        _buildTableRow("Name", state.user.name),
                        _buildTableRow("Phone", state.user.phone),
                        _buildTableRow("Address", state.user.address,
                            isAddress: true),
                        _buildTableRow(
                            "Vehicle Registration Number", state.user.vehicle),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Personal Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Table(
                      columnWidths: const {
                        0: FixedColumnWidth(120), // Adjust as needed
                        1: FlexColumnWidth(),
                      },
                      children: [
                        _buildTableRow("Blood Group", state.user.bloodGrp),
                        _buildTableRow("Height", state.user.height),
                        _buildTableRow("Weight", state.user.weight),
                        _buildTableRow("Medication", state.user.medication),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Emergency Contacts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Table(
                      columnWidths: const {
                        0: FixedColumnWidth(120), // Adjust as needed
                        1: FlexColumnWidth(),
                      },
                      children: [
                        _buildTableRow("Name", state.user.name1),
                        _buildTableRow("Contact Number", state.user.phone1),
                        _buildTableRow("Name", state.user.name2),
                        _buildTableRow("Contact Number", state.user.phone2),
                        _buildTableRow("Name", state.user.name3),
                        _buildTableRow("Contact Number", state.user.phone3),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          }
          return const Center(child: Text("Something Went Wrong"));
        },
      ),
    ));
  }
}

TableRow _buildTableRow(String label, String value, {bool isAddress = false}) {
  return TableRow(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "$label:",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: isAddress
            ? Text(
                value,
                style: const TextStyle(fontSize: 16),
                maxLines: null, // Allows wrapping
                overflow: TextOverflow.visible,
                softWrap: true,
              )
            : Text(
                value,
                style: const TextStyle(fontSize: 16),
              ),
      ),
    ],
  );
}
