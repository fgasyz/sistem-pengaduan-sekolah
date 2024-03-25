class ComplaintModel {
  final String no;
  final String tanggal;
  final String tentang;
  final String status;
  final List<String> aksi;

  ComplaintModel(
      {required this.no,
      required this.tanggal,
      required this.tentang,
      required this.status,
      required this.aksi});
}
