import 'package:data_kependudkan/model/data_penduduk_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataView extends StatefulWidget {
  final DataPendudukModel dataPendudukModel;

  const DataView({Key? key, required this.dataPendudukModel}) : super(key: key);
  @override
  _DataViewState createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  get border => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Kependudukan'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 20),
        children: [
          KotakData(
              label: 'nama lengkap',
              isian: widget.dataPendudukModel.namalengkap!),
          KotakData(label: 'NIK', isian: widget.dataPendudukModel.NIk!),
          KotakData(
              label: 'Kewarganegaraan',
              isian:
                  widget.dataPendudukModel.kewarganegaraan ?? "tidak terisi"),
          KotakData(
              label: 'Suku Bangsa',
              isian: widget.dataPendudukModel.suku ?? 'tidak terisi'),
          KotakData(
              label: 'agama',
              isian: widget.dataPendudukModel.agama ?? "tidak terisi"),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Kelahiran',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          KotakData(
              label: 'Tempat lahir',
              isian: widget.dataPendudukModel.lahir ?? "tidak terisi"),
          KotakData(
              label: 'Jenis Kelamin',
              isian: widget.dataPendudukModel.jeniskelamin ?? 'tidak terisi'),
          KotakData(
              label: 'Status Alamat',
              isian: widget.dataPendudukModel.alamat ?? 'tidak terisi'),
          KotakData(
              label: 'Jalan/Blok/Dusun',
              isian: widget.dataPendudukModel.jalan ?? 'Tidak Terisi'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120,
                child: KotakData(
                    label: 'nomer',
                    isian: widget.dataPendudukModel.nomer ?? " tidak terisi"),
              ),
              Container(
                width: 120,
                child: KotakData(
                    label: 'RT',
                    isian: widget.dataPendudukModel.RT ?? 'Tidak Terisi'),
              ),
              Container(
                width: 120,
                child: KotakData(
                    label: 'RW',
                    isian: widget.dataPendudukModel.RW ?? 'TIdak terisi'),
              ),
            ],
          ),
          KotakData(
              label: 'Kelurahan',
              isian: widget.dataPendudukModel.kelurahan ?? "Tidak TErisi"),
          KotakData(
              label: 'Kabupaten',
              isian: widget.dataPendudukModel.kabupaten ?? ' Tirdak Terisi'),
          KotakData(
              label: 'provinsi',
              isian: widget.dataPendudukModel.provinsi ?? 'tidk terisi'),
          KotakData(
              label: 'Kode Pos',
              isian: widget.dataPendudukModel.kode ?? ' tidak terisi'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: KotakData(
                    label: 'Lama Tinggal',
                    isian:
                        widget.dataPendudukModel.lamatinggal ?? 'tidak terisi'),
              ),
              Container(
                width: 120,
                child: KotakData(
                    label: 'Tahun',
                    isian: widget.dataPendudukModel.tahun ?? '0'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          KotakData(
              label: 'Status Perkawinan',
              isian: widget.dataPendudukModel.perkawinan ?? 'tidak terisi'),
          KotakData(
              label: 'Status Hubungan',
              isian: widget.dataPendudukModel.hubungan ?? ' Tidak Terisi'),
          KotakData(
              label: 'PEndidikan Terakhir',
              isian: widget.dataPendudukModel.pendidikan ?? "Tidak Terisi"),
          KotakData(
              label: 'pekerjaan',
              isian: widget.dataPendudukModel.pekerjaan ?? ' Tidak Terisi'),
        ],
      ),
    );
  }
}

class KotakData extends StatelessWidget {
  const KotakData({
    Key? key,
    required this.label,
    required this.isian,
  }) : super(key: key);
  final String label;
  final String isian;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10, left: 5, top: 5, bottom: 5),
      margin: EdgeInsets.only(right: 20, left: 20, top: 20),
      color: Colors.grey[400],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
          ),
          Row(
            children: [Icon(Icons.arrow_right), Text(isian)],
          )
        ],
      ),
    );
  }
}
