import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แบบฟอร์มบันทึกข้อมูล'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: new InputDecoration(labelText: 'ชื่ออรายการ'),
                autofocus: true,
              ),
              TextFormField(
                decoration: new InputDecoration(labelText: 'จำนวนเงิน'),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('เพิ่มข้อมูล'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
