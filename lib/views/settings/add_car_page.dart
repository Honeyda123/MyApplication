import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCarPage extends StatefulWidget {
  const AddCarPage({super.key});

  @override
  State<AddCarPage> createState() => _AddCarFormState();
}

class _AddCarFormState extends State<AddCarPage> {

  TextEditingController brand = TextEditingController();
  TextEditingController model = TextEditingController();
  TextEditingController registration = TextEditingController();
  TextEditingController otherInfo = TextEditingController();
  File? _selectedImage;
  final _formKey = GlobalKey<FormState>();

  // Initial Selected Value
  String dropdownvalue = 'Cabine 3T';

  // List of items in our dropdown menu
  var items = [
    'Cabine 3T',
    'Plateau 10T',
    'Cabine 10T',
    'Semi plateau 25T',
    'Remorque 25T',
    'Pickup Isuzu 1T',
    'Pickup Cabine (B9) 1T',
    'Plateau 3T',
  ];

  Future<void> pickImage() async {
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
        _selectedImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add a new car',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors
            .deepOrangeAccent,
        elevation: 20.00,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              GestureDetector(
                onTap: pickImage,
                child: Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    image: _selectedImage != null
                        ? DecorationImage(
                      image: FileImage(_selectedImage!),
                      fit: BoxFit.cover,
                    )
                        : null,
                  ),
                  child: _selectedImage == null
                      ? const Icon(
                    Icons.cloud_upload_outlined,
                    size: 100,
                    color: Colors.orange,
                  )
                      : null,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue,
                    // Down Arrow Icon
                    icon: const Icon(Icons.arrow_downward_outlined),
                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Card(
                  shadowColor: Colors.white60,
                  child: TextFormField(
                    controller: brand,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                      hintText: "Vehicule Make / Brand Name",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter a brand name';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Card(
                  shadowColor: Colors.white60,
                  child: TextFormField(
                    controller: model,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                      hintText: "Vehicule Model No",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter a model name';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Card(
                  shadowColor: Colors.white60,
                  child: TextFormField(
                    controller: registration,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                      hintText: "Vehicule Registration number",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter a brand name';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Card(
                  shadowColor: Colors.white60,
                  child: TextFormField(
                    controller: otherInfo,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                      hintText: "Other Vehicule or Driver Info",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter infos';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontStyle: FontStyle.normal),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Call the add function here
                    }
                  },
                  child: const Text('ADD', style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
