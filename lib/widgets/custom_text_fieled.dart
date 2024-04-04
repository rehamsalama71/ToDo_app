import 'package:flutter/material.dart';
import 'package:tecno_notes_app/widgets/constant.dart';


class CustomTextField extends StatelessWidget {
   CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChange});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final todoController= TextEditingController();
  final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: todoController,
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: kPrimaryColor,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? kPrimaryColor)
          );
  }
}
