import 'package:flutter/material.dart';

class ContohRadioButton01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh RadioButton',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh RadioButton'),
        ),
        body: PilihJKL(),
      ),
    );
  }
}

class PilihJKL extends StatefulWidget {
  @override
  _PilihJKLState createState() => _PilihJKLState();
}

class _PilihJKLState extends State<PilihJKL> {
  String? _gender; // menyimpan pilihan gender

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Pilih Jenis Kelamin:'),
        ListTile(
          title: const Text('Pria'),
          leading: Radio<String>(
            value: 'Pria',
            groupValue: _gender,
            onChanged: (String? value) {
              setState(() {
                _gender = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Wanita'),
          leading: Radio<String>(
            value: 'Wanita',
            groupValue: _gender,
            onChanged: (String? value) {
              setState(() {
                _gender = value;
              });
            },
          ),
        ),
        SizedBox(height: 20),
        Text(
          _gender == null ? 'Tidak ada pilihan' : 'Anda memilih: $_gender',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
