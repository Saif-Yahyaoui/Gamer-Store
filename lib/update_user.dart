import 'package:flutter/material.dart';

class UpdateUser extends StatefulWidget {
  const UpdateUser({Key? key}) : super(key: key);

  @override
  _UpdateUserState createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  late String? currentPassword;
  late String? newPassword;
  late String? address;

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil settings"),
      ),
      body: Form(
        key: _keyForm,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("assets/images/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Current password"),
                onSaved: (String? value) {
                  currentPassword = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The password must not be empty";
                  } else if (value.length < 5) {
                    return "Password must be at least 5 characters long";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "New password"),
                onSaved: (String? value) {
                  newPassword = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The password must not be empty";
                  } else if (value.length < 5) {
                    return "Password must be at least 5 characters long";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Billing address"),
                onSaved: (String? value) {
                  address = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "The email address must not be empty";
                  } else if (value.length < 20) {
                    return "The email address must be at least 20 characters long";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: ElevatedButton(
                child: const Text("Update"),
                onPressed: () {
                  if (_keyForm.currentState!.validate()) {
                    _keyForm.currentState!.save();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
