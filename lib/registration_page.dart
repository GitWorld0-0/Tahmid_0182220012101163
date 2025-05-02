import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _idController = TextEditingController();
  final _departmentController = TextEditingController();
  final _batchController = TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final id = _idController.text;
      final department = _departmentController.text;
      final batch = _batchController.text;

      // Here, you could send the data to a backend or database

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registered $name from $department')),
      );

      // Optionally, clear the form
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter name' : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'ID'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter ID' : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _departmentController,
                decoration: InputDecoration(labelText: 'Department'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter department' : null,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _batchController,
                decoration: InputDecoration(labelText: 'Batch'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'Enter batch' : null,
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _register,
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
