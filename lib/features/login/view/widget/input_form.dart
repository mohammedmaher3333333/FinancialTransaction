import 'package:flutter/material.dart';
import '../../../../core/resource/color_manager.dart';
import '../../../../core/resource/styles_manager.dart';
import '../../../../core/resource/values_manager.dart';

class InputForm extends StatefulWidget {
  const InputForm({
    super.key,
    required this.hint,
    required this.textEditingController,
    required this.title,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String title;
  final String hint;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final TextEditingController textEditingController;
  final bool obscureText;

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p16),
              child: Text(
                widget.title,
                style: getSemiBoldStyle(color: ColorManager.grey),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    obscureText: widget.obscureText ? _isObscure : false,
                    controller: widget.textEditingController,
                    decoration: InputDecoration(
                      suffixIcon: widget.obscureText
                          ? IconButton(
                        icon: Icon(
                          _isObscure
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      )
                          : Icon(widget.suffixIcon),
                      prefixIcon: Icon(widget.prefixIcon),
                      hintText: widget.hint,
                      hintStyle: getBoldStyle(color: ColorManager.black),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
