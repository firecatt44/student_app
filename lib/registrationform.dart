import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'homeparent.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _plannedDateController = TextEditingController();

  String _genderValue = "-1";
  String _nationalityValue = "-1";
  String _programmeValue = "-1";
  String _levelValue = "-1";

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  void _selectDate(
      BuildContext context, TextEditingController controller) async {
    FocusScope.of(context).requestFocus(FocusNode());

    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        final formattedDate = DateFormat('dd-MM-yyyy').format(selectedDate);
        controller.text = formattedDate;
      });
    }
  }

  DropdownButtonFormField<String> buildDropdownFormField({
    required String value,
    required String labelText,
    required List<DropdownMenuItem<String>> items,
    required String? Function(String?)? validator,
    required void Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      validator: validator,
      value: value,
      items: items,
      onChanged: onChanged,
    );
  }

  TextFormField buildTextField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
    required IconData icon,
    required String? Function(String?)? validator,
    required void Function()? onTap,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        hintText: hintText,
        icon: Icon(icon),
      ),
      validator: validator,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please enter student name.',
                  hintText: 'Student Name',
                ),
                validator: (value) {
                  if (value != null && value.length < 2) {
                    return 'Enter correct name';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 16.0),
              buildDropdownFormField(
                value: _genderValue,
                labelText: 'Please select student gender.',
                items: [
                  DropdownMenuItem(
                    child: Text(""),
                    value: "-1",
                  ),
                  DropdownMenuItem(
                    child: Text("Male"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("Female"),
                    value: "2",
                  ),
                ],
                validator: (value) {
                  if (value == '1' || value == '2') {
                    return null;
                  } else {
                    return 'Please select the gender.';
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _genderValue = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              buildDropdownFormField(
                value: _nationalityValue,
                labelText: 'Please select nationality.',
                items: [
                  DropdownMenuItem(
                    child: Text(""),
                    value: "-1",
                  ),
                  DropdownMenuItem(
                    child: Text("Malaysian"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("Non-Malaysian"),
                    value: "2",
                  ),
                ],
                validator: (value) {
                  if (value == '1' || value == '2') {
                    return null;
                  } else {
                    return 'Please select the nationality.';
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _nationalityValue = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              buildTextField(
                controller: _dateController,
                labelText: 'Please select date of birth',
                hintText: 'Select Date',
                icon: Icons.calendar_today_rounded,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a date of birth.';
                  } else {
                    return null;
                  }
                },
                onTap: () => _selectDate(context, _dateController),
              ),
              const SizedBox(height: 16.0),
              buildTextField(
                controller: _plannedDateController,
                labelText: 'Please select the planned start date',
                hintText: 'Select Date',
                icon: Icons.calendar_today_rounded,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a planned start date.';
                  } else {
                    return null;
                  }
                },
                onTap: () => _selectDate(context, _plannedDateController),
              ),
              const SizedBox(height: 16.0),
              buildDropdownFormField(
                value: _programmeValue,
                labelText: 'Please choose a programme.',
                items: [
                  DropdownMenuItem(
                    child: Text(""),
                    value: "-1",
                  ),
                  DropdownMenuItem(
                    child: Text("Primary"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("Secondary"),
                    value: "2",
                  ),
                ],
                validator: (value) {
                  if (value == '1' || value == '2') {
                    return null;
                  } else {
                    return 'Please select the programme.';
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _programmeValue = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              buildDropdownFormField(
                value: _levelValue,
                labelText: 'Please select level.',
                items: [
                  DropdownMenuItem(
                    child: Text(""),
                    value: "-1",
                  ),
                  DropdownMenuItem(
                    child: Text("Year 1"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("Year 2"),
                    value: "2",
                  ),
                  DropdownMenuItem(
                    child: Text("Year 3"),
                    value: "3",
                  ),
                  DropdownMenuItem(
                    child: Text("Year 4"),
                    value: "4",
                  ),
                  DropdownMenuItem(
                    child: Text("Year 5"),
                    value: "5",
                  ),
                  DropdownMenuItem(
                    child: Text("Year 6"),
                    value: "6",
                  ),
                ],
                validator: (value) {
                  if (value == '1' ||
                      value == '2' ||
                      value == '3' ||
                      value == '4' ||
                      value == '5' ||
                      value == '6') {
                    return null;
                  } else {
                    return 'Please select the level.';
                  }
                },
                onChanged: (value) {
                  setState(() {
                    _levelValue = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50), backgroundColor: Colors.indigo),
                onPressed: () {
                  final isValidForm = _formKey.currentState!.validate();
                  if (isValidForm) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => Home(
                                title: 'Homepage',
                              )),
                    );
                  }
                },
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Student Admission'),
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 46, 54, 97),
      actions: const <Widget>[],
    );
  }
}
