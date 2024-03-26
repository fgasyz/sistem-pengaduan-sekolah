import '../../modules/models/user_model.dart';
import '../../widgets/buttons/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class UserDataSource extends DataTableSource {
  final BuildContext context;

  UserDataSource({required this.context});

  final List<UserModel> dumies = List.generate(
      10,
      (index) => UserModel(
          no: index.toString(),
          profile: 'https://picsum.photos/300/300',
          nama: 'nama',
          status: 'status',
          aksi: ['detail', 'hapus']));

  @override
  DataRow? getRow(int index) {
    if (index >= dumies.length) return null;
    final row = dumies[index];
    return DataRow(cells: [
      DataCell(Text(row.no)),
      DataCell(Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(row.profile)),
      )),
      DataCell(Text(row.nama)),
      DataCell(Text(row.status)),
      DataCell(Row(
        children: [
          customElevatedButton(
              title: row.aksi[0],
              height: 35,
              pV: 2,
              context: context,
              titleColor: Colors.white,
              backgroundColor: Colors.blue.shade900,
              width: 80,
              textStyle: Theme.of(context)
                        .textTheme
                        .copyWith(
                            bodySmall: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                                fontWeight: FontWeight.normal))
                        .bodySmall,
              onCallback: () {}),
          const SizedBox(width: 15),
          customElevatedButton(
              height: 35,
              pV: 2,
              title: row.aksi[1],
              textStyle: Theme.of(context)
                        .textTheme
                        .copyWith(
                            bodySmall: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                                fontWeight: FontWeight.normal))
                        .bodySmall,
              context: context,
              titleColor: Colors.white,
              backgroundColor: Colors.red.shade900,
              width: 80,
              onCallback: () {}),
        ],
      )),
    ]);
  }

  @override
  int get rowCount => dumies.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
