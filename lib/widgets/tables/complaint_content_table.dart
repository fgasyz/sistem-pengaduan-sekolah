import '../../utils/helpers/complaint_data_source.dart';
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class ComplaintContentTable extends StatelessWidget {
  const ComplaintContentTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          color: Colors.white,
          child: PaginatedDataTable2(
              headingRowHeight: 70,
              dataTextStyle: Theme.of(context).textTheme.bodyMedium,
              dataRowHeight: 70,
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: const [
                DataColumn2(
                  label: Text('No'),
                  size: ColumnSize.S,
                ),
                DataColumn2(
                  label: Text('Tanggal'),
                ),
                DataColumn2(
                  label: Text('Tentang'),
                ),
                DataColumn2(
                  label: Text('Status'),
                ),
                DataColumn2(label: Text('Aksi'), size: ColumnSize.L),
              ],
              source: ComplaintDataSource(context: context))),
    );
  }
}
