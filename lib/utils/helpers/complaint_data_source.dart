import 'package:aplikasi_pengaduan_sekolah_v1/widgets/buttons/custom_dropdown_button.dart';
import 'package:flutter/material.dart';
import '../../modules/models/complaint_model.dart';

class ComplaintDataSource extends DataTableSource {
  final BuildContext context;

  ComplaintDataSource({required this.context});
  final List<ComplaintModel> dumies = List.generate(
      10,
      (index) => ComplaintModel(
          no: index.toString(),
          tanggal: 'tanggal',
          tentang: 'tentang',
          status: 'status',
          aksi: ['masuk', 'diproses', 'selesai']));

  @override
  DataRow? getRow(int index) {
    if (index >= dumies.length) return null;
    final row = dumies[index];
    return DataRow(cells: [
      DataCell(Text(row.no)),
      DataCell(Text(row.tanggal)),
      DataCell(Text(row.tentang)),
      DataCell(Text(row.status)),
      DataCell(customDropdownButton(context: context, items: row.aksi)),
    ]);
  }

  @override
  int get rowCount => dumies.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
