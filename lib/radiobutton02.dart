import 'package:flutter/material.dart';

class ContohRadioButton02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh RadioButton Rumus Matematika',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pilih Rumus Matematika'),
        ),
        body: RumusMTK(),
      ),
    );
  }
}

class RumusMTK extends StatefulWidget {
  @override
  _RumusMTKState createState() => _RumusMTKState();
}

class _RumusMTKState extends State<RumusMTK> {
  String? _operation; // Menyimpan pilihan operasi
  double _result = 0; // Menyimpan hasil
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  void _calculate() {
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;

    if (_operation == 'Penjumlahan') {
      _result = num1 + num2;
    } else if (_operation == 'Pengurangan') {
      _result = num1 - num2;
    } else if (_operation == 'Perkalian') {
      _result = num1 * num2;
    }
    setState(() {}); // Memperbarui tampilan
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Pilih Operasi Matematika:'),
          ListTile(
            title: const Text('Penjumlahan'),
            leading: Radio<String>(
              value: 'Penjumlahan',
              groupValue: _operation,
              onChanged: (String? value) {
                setState(() {
                  _operation = value; // Update pilihan operasi
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Pengurangan'),
            leading: Radio<String>(
              value: 'Pengurangan',
              groupValue: _operation,
              onChanged: (String? value) {
                setState(() {
                  _operation = value; // Update pilihan operasi
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Perkalian'),
            leading: Radio<String>(
              value: 'Perkalian',
              groupValue: _operation,
              onChanged: (String? value) {
                setState(() {
                  _operation = value; // Update pilihan operasi
                });
              },
            ),
          ),
          SizedBox(height: 20),
          // Input angka
          TextField(
            controller: _num1Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Angka Pertama'),
          ),
          TextField(
            controller: _num2Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Angka Kedua'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _calculate,
            child: Text('Hitung'),
          ),
          SizedBox(height: 20),
          // Menampilkan hasil
          Text(
            _operation == null
                ? 'Pilih operasi terlebih dahulu'
                : 'Hasil: $_result',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
