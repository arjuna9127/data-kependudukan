import 'package:data_kependudkan/model/data_penduduk_model.dart';
import 'package:data_kependudkan/screen/data_view.dart';
import 'package:flutter/material.dart';

class InputNewData extends StatefulWidget {
  const InputNewData({Key? key}) : super(key: key);

  @override
  _InputNewDataState createState() => _InputNewDataState();
}

class _InputNewDataState extends State<InputNewData> {
  TextEditingController namalengkap = TextEditingController();
  TextEditingController NIK = TextEditingController();
  TextEditingController kewarganegaraan = TextEditingController();
  TextEditingController suku = TextEditingController();
  TextEditingController agama = TextEditingController();
  TextEditingController lahir = TextEditingController();
  TextEditingController jalan = TextEditingController();
  TextEditingController nomer = TextEditingController();
  TextEditingController RT = TextEditingController();
  TextEditingController RW = TextEditingController();
  TextEditingController kelurahan = TextEditingController();
  TextEditingController kabupaten = TextEditingController();
  TextEditingController provinsi = TextEditingController();
  TextEditingController kode = TextEditingController();
  TextEditingController lamatinggal = TextEditingController();
  TextEditingController tahun = TextEditingController();
  TextEditingController perkawinan = TextEditingController();
  TextEditingController Hubungan = TextEditingController();
  TextEditingController pendidikan = TextEditingController();
  TextEditingController pekerjaan = TextEditingController();
  int jumlahtinggal = 0;
  String jenisKelamin = "laki";
  String statusAlamat = 'alamat';
  String satuanTinggal = 'tahun';
  void increment() {
    setState(() {
      jumlahtinggal++;
    });
    lamatinggal.text = jumlahtinggal.toString();
  }

  void decrement() {
    setState(() {
      jumlahtinggal--;
    });
    lamatinggal.text = jumlahtinggal.toString();
  }

  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(
          width: 1,
          color: Theme.of(context).primaryColor,
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Penduduk',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          LabelTextfield(
            controller: namalengkap,
            border: border,
            label: 'Nama Lengkap',
            hint: 'Nama Lengkap',
          ),
          const SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: NIK,
            border: border,
            label: 'NIK (Nomor Induk Kependudukan',
            hint: 'NIK',
          ),
          const SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: kewarganegaraan,
            border: border,
            label: 'Kewarganegaraan',
            hint: 'Kewarganegaraan',
          ),
          const SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: suku,
            border: border,
            label: 'Suku Bangsa',
            hint: 'Suku Bangsa',
          ),
          const SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: agama,
            border: border,
            label: 'Agama',
            hint: 'Agama',
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Kelahiran',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
          LabelTextfield(
            controller: lahir,
            border: border,
            label: 'Tempat Lahir',
            hint: 'Tempat Lahir',
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Jenis Kelamin'),
              ListTile(
                title: const Text('Laki-Laki'),
                leading: Radio<String>(
                  fillColor: MaterialStateProperty.all(Color(0xff377765)),
                  value: 'laki',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Perempuan'),
                leading: Radio<String>(
                  fillColor: MaterialStateProperty.all(Color(0xff377765)),
                  value: 'perempuan',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Alamat',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Status Alamat'),
              ListTile(
                title: Text('Alamat Asli (Sesuai Domisili) '),
                leading: Radio<String>(
                  fillColor: MaterialStateProperty.all(Color(0xff377765)),
                  value: 'alamat',
                  groupValue: statusAlamat,
                  onChanged: (value) {
                    setState(() {
                      statusAlamat = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Alamat Domisili'),
                leading: Radio<String>(
                  fillColor: MaterialStateProperty.all(Color(0xff377765)),
                  value: 'Domisili',
                  groupValue: statusAlamat,
                  onChanged: (value) {
                    setState(() {
                      statusAlamat = value!;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          LabelTextfield(
            controller: jalan,
            border: border,
            label: 'Jalan/Blok/Dusun',
            hint: 'Jalan/Blok/Dusun',
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: LabelTextfield(
                  controller: nomer,
                  border: border,
                  label: 'Nomer',
                  hint: 'Nomer',
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: LabelTextfield(
                  controller: RT,
                  border: border,
                  label: 'RT',
                  hint: 'RT',
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: LabelTextfield(
                  controller: RW,
                  border: border,
                  label: 'RW',
                  hint: 'RW',
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: kelurahan,
            border: border,
            label: 'Kelurahan/Desa',
            hint: 'Kelurahan/Desa',
          ),
          SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: kabupaten,
            border: border,
            label: 'Kabupaten',
            hint: 'Kabupaten',
          ),
          SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: provinsi,
            border: border,
            label: 'Provinsi',
            hint: 'Provinsi',
          ),
          SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: kode,
            border: border,
            label: 'Kode Pos',
            hint: 'Kode Pos',
          ),
          SizedBox(
            height: 30,
          ),
          Text('Lama Tinggal'),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffC0D6D1),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.0),
                    borderRadius: BorderRadius.circular(9)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: decrement,
                      icon: const Icon(Icons.remove),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            jumlahtinggal = int.parse(value);
                          });
                        },
                        controller: lamatinggal,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Color(0xff377765)),
                            hintText: 'Lama Tinggal',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    IconButton(onPressed: increment, icon: Icon(Icons.add))
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1.0),
                    borderRadius: BorderRadius.circular(9)),
                width: 100,
                child: DropdownButton<String>(
                  dropdownColor: Color(0xffC0D6D1),
                  underline: const SizedBox(),
                  value: satuanTinggal,
                  onChanged: (value) {
                    setState(() {
                      satuanTinggal = value!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      child: Text('Tahun'),
                      value: 'tahun',
                    ),
                    DropdownMenuItem(
                      child: Text('Bulan'),
                      value: 'bulan',
                    ),
                    DropdownMenuItem(
                      child: Text('Hari'),
                      value: 'hari',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Status',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          LabelTextfield(
            controller: perkawinan,
            border: border,
            label: 'Status Perkawinan',
            hint: 'Status Perkawinan',
          ),
          SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: pekerjaan,
            border: border,
            label: 'Status Hubungan',
            hint: 'Status Hubungan',
          ),
          SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: pendidikan,
            border: border,
            label: 'Pendidikan Terakhir',
            hint: 'Pendidikan Terakhir',
          ),
          SizedBox(
            height: 10,
          ),
          LabelTextfield(
            controller: pekerjaan,
            border: border,
            label: 'Pekerjaan',
            hint: 'Pekerjaan',
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DataView(
                  dataPendudukModel: DataPendudukModel(
                    namalengkap: namalengkap.text,
                    NIk: NIK.text,
                    kewarganegaraan: kewarganegaraan.text,
                    suku: suku.text,
                    agama: agama.text,
                    lahir: lahir.text,
                    jalan: jalan.text,
                    nomer: nomer.text,
                    RT: RT.text,
                    RW: RW.text,
                    kelurahan: kelurahan.text,
                    kabupaten: kabupaten.text,
                  ),
                );
              }));
            },
            child: const Text('Selanjutnya'),
            style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
          ),
        ],
      ),
    );
  }
}

class LabelTextfield extends StatelessWidget {
  const LabelTextfield({
    Key? key,
    required this.border,
    required this.label,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  final InputBorder border;
  final String label;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(
          height: 2,
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: Color(0xffC0D6D1),
            filled: true,
            hintText: hint,
            hintStyle: TextStyle(color: Color(0xff377765)),
            border: border,
            focusedBorder: border.copyWith(
              borderSide: BorderSide(
                width: 2,
                color: const Color(0xffC0D6D1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
