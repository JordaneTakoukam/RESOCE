import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resoce/core/functions/functions.dart';
import 'package:resoce/core/values/colors/color_app.dart';


class InputTextAuth extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function(String) validator;
  final bool obscureText;
  final bool enabled;
  final double width;
  final bool required;
  final bool prefix;
  final Widget prefixIcon;
  final dynamic focusNode;
  final bool considereMaj;

  const InputTextAuth({
    Key? key,
    required this.labelText,
    required this.keyboardType,
    required this.controller,
    required this.validator,
    this.obscureText = false,
    this.enabled = true,
    this.width = 1,
    this.required = false,
    this.prefixIcon = const SizedBox(),
    this.prefix = false,
    this.focusNode,
    this.considereMaj = true, // Ajout d'une valeur par défaut
  }) : super(key: key);

  @override
  State<InputTextAuth> createState() => _InputTextAuthState();
}

class _InputTextAuthState extends State<InputTextAuth> {
  bool showError = false;
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: Get.width * widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Get.width * .045,
              color: Colors.grey.shade800,
            ),
            // focusNode: widget.focusNode,
            controller: widget.controller,
            obscureText: !passwordVisible && widget.obscureText,
            enabled: widget.enabled,
            keyboardType: widget.keyboardType,
            cursorColor: AppColors.primaryColor,
            cursorHeight: 20,
            decoration: InputDecoration(
              labelText:
                  '${widget.considereMaj == true ? capitalizeText(widget.labelText.tr) : widget.labelText.tr} ${widget.required == false ? '' : '*'}',
              labelStyle: TextStyle(
                color: Colors.grey.shade600.withOpacity(.9),
                fontSize: 16,
              ),
              contentPadding: const EdgeInsets.fromLTRB(2, 0, 16, 10),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 181, 181, 185),
                  width: 1.0,
                ),
              ),
              prefixIcon: widget.prefix == true ? widget.prefixIcon : null,
              suffixIcon: widget.obscureText
                  ? GestureDetector(
                      onTap: () {
                        setState(() => passwordVisible = !passwordVisible);
                      },
                      child: Icon(
                        passwordVisible
                            ? CupertinoIcons.eye_slash
                            : CupertinoIcons.eye,
                        size: 20,
                        color: const Color.fromARGB(255, 61, 54, 117),
                      ),
                    )
                  : null,
            ),
            onChanged: (value) {
              setState(() => showError = false);
            },
            validator: (value) {
              return widget.validator(value ?? "");
            }
            ,
          ),
        ],
      ),
    );
  }
}
