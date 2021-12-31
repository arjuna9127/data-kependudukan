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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          KotakData(
              label: 'Tempat lahir',
              isian: widget.dataPendudukModel.lahir ?? "tidak terisi")
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
      margin: EdgeInsets.only(right: 20, left: 20, top: 20),
      color: Colors.grey[400],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          Row(
            children: [Icon(Icons.arrow_right), Text(isian)],
          )
        ],
      ),
    );
  }
}
