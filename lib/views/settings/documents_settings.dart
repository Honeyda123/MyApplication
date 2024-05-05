import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class documents_settings extends StatefulWidget {
  const documents_settings({super.key});

  @override
  State<documents_settings> createState() => _documents_settingsState();
}

class _documents_settingsState extends State<documents_settings> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController account = TextEditingController();
  File? _selectedImageFront;
  File? _selectedImageBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Update Documents',
            style: TextStyle(
              color: Colors.black,
            ), // Couleur du titre
          ),
          backgroundColor: Colors.deepOrangeAccent,
          // Couleur transparente pour un aspect sans bordure
          elevation: 20.00,
          // Supprimer l'ombre de l'appBar
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Form(
            key: _formKey,
            child: Column(children: [
              Card(
                shadowColor: Colors.white60,
                child: TextFormField(
                  controller: name,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.red,
                  decoration: const InputDecoration(
                    hintText: "Bank Name",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.food_bank_rounded),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a name';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shadowColor: Colors.white60,
                child: TextFormField(
                  controller: code,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.red,
                  decoration: const InputDecoration(
                    hintText: "Bank Code",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.format_list_numbered_sharp),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a code';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shadowColor: Colors.white60,
                child: TextFormField(
                  controller: account,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.red,
                  decoration: const InputDecoration(
                    hintText: "Bank Account",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.format_list_numbered_sharp),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter an account';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Pick Front"),
              GestureDetector(
                onTap: () async {
                  final imagePicker = ImagePicker();
                  final pickedImage = await showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.camera_alt),
                              title: const Text('Camera'),
                              onTap: () async {
                                Navigator.pop(
                                    context,
                                    await imagePicker.pickImage(
                                        source: ImageSource.camera));
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.photo_library),
                              title: const Text('Media Library'),
                              onTap: () async {
                                Navigator.pop(
                                    context,
                                    await imagePicker.pickImage(
                                        source: ImageSource.gallery));
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.close),
                              title: const Text('Cancel'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );

                  if (pickedImage != null) {
                    setState(() {
                      _selectedImageFront = File(pickedImage.path);
                    });
                  }
                },
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(50),
                    image: _selectedImageFront != null
                        ? DecorationImage(
                            image: FileImage(_selectedImageFront!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: _selectedImageFront == null
                      ? const Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.white,
                        )
                      : null,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Pick Back"),
              GestureDetector(
                onTap: () async {
                  final imagePicker = ImagePicker();
                  final pickedImage = await showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: const Icon(Icons.camera_alt),
                              title: const Text('Camera'),
                              onTap: () async {
                                Navigator.pop(
                                    context,
                                    await imagePicker.pickImage(
                                        source: ImageSource.camera));
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.photo_library),
                              title: const Text('Media Library'),
                              onTap: () async {
                                Navigator.pop(
                                    context,
                                    await imagePicker.pickImage(
                                        source: ImageSource.gallery));
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.close),
                              title: const Text('Cancel'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );

                  if (pickedImage != null) {
                    setState(() {
                      _selectedImageBack = File(pickedImage.path);
                    });
                  }
                },
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(50),
                    image: _selectedImageBack != null
                        ? DecorationImage(
                            image: FileImage(_selectedImageBack!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: _selectedImageBack == null
                      ? const Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.white,
                        )
                      : null,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // update handler
                  }
                },
                child: const Text("Update"),
              )
            ]),
          )),
        ));
  }
}
