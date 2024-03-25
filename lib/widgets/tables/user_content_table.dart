import 'package:aplikasi_pengaduan_sekolah_v1/utils/helpers/user_data_source.dart';
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class UserContentTable extends StatelessWidget {
  const UserContentTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          color: Colors.white,
          child: PaginatedDataTable2(
              headingTextStyle: Theme.of(context).textTheme.titleSmall,
              headingRowHeight: 70,
              dataRowHeight: 70,
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 300,
              columns: const [
                DataColumn2(
                  label: Text('No'),
                  size: ColumnSize.S,
                ),
                DataColumn2(
                  label: Text('Profile'),
                ),
                DataColumn2(
                  label: Text('Nama'),
                ),
                DataColumn2(
                  label: Text('Status'),
                ),
                DataColumn2(label: Text('Aksi'), size: ColumnSize.L),
              ],
              source: UserDataSource(context: context)),
        ));
  }
}
