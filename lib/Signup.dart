import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String? username;
  late String? pwd;
  late String? email;
  late String? birthdate;
  late String? address;

  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("assets/images/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
                onSaved: (String? value) {
                  username = value;
                },
                validator: (String? value) {
                  if (value!.isEmpty || value.length < 5) {
                    return "The username cannot be empty and must be at least 5 characters long.";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (String? value) {
                    email = value!;
                  },
                  validator: (value) {
                    RegExp regex = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                    if (value!.isEmpty || !regex.hasMatch(value)) {
                      return "Email has to be valid. ";
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
                obscureText: true,
                onSaved: (String? value) {
                  pwd = value;
                },
                validator: (String? value) {
                  if (value!.isEmpty || value.length < 3) {
                    return "The password has to be valid. ";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Birthdate"),
                  keyboardType: TextInputType.number,
                  onSaved: (String? value) {
                    birthdate = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty || int.parse(value!.toString()) > 2017) {
                      return "The birthdate has to be valid.";
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Billing address"),
                  maxLines: 3,
                  onSaved: (String? value) {
                    address = value!;
                  },
                  validator: (value) {
                    if (value!.isEmpty || value.length < 10) {
                      return "The username has to be valid.";
                    } else {
                      return null;
                    }
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Sign Up"),
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      String message =
                          "Username : $username\nEmail : $email\npassword : $pwd\n BirthDate : $birthdate\n adresse : $address";
                      showDialog(
                          context: context,
                          builder: (builder) {
                            return AlertDialog(
                              title: const Text("Information"),
                              content: Text(message),
                            );
                          });
                    }
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  child: const Text("Cancel"),
                  onPressed: () {
                    formkey.currentState!.reset();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
