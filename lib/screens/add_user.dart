import 'package:flutter/material.dart';
import 'package:flutter_tutorial/widgets/text_field_string.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  void clearFields() {
    nameController.clear();
    bioController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Username"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a username";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFieldString(
              controller: bioController,
              label: "Bio",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a bio";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  clearFields();
                }
              },
              child: Text("Add user"),
            )
          ],
        ),
      ),
    );
  }
}
