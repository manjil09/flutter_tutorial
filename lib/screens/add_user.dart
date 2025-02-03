import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/bloc/user_bloc.dart';
import 'package:flutter_tutorial/bloc/user_event.dart';
import 'package:flutter_tutorial/models/user.dart';
import 'package:flutter_tutorial/widgets/text_field_string.dart';

class AddUser extends StatelessWidget {
  AddUser({super.key});
  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController bioController = TextEditingController();

  void clearFields() {
    nameController.clear();
    bioController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final userBloc = context.read<UserBloc>();

    void addUser() {
      final user = User(
        name: nameController.text,
        bio: bioController.text,
      );

      userBloc.add(AddUserEvent(user));
    }

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
                  addUser();
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
