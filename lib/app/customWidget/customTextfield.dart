import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';
import '../theme/app_theme.dart';
import '../utils/AppFont.dart';

typedef TagButtonPressedCallBack = void Function(String key);

class CustomTextField extends GetView {
  const CustomTextField(
      {super.key,this.hintTextStyle, this.labelTextStyle,
        this.fillColor,
        this.suffix,
        this.textStyle,
        this.filled,
        this.inputFormatter,
        this.hintText,
        this.prefix,
        this.textInputType,
        this.labelText,
        this.onChanged,
        this.textCapitalization,
        this.controller,
        this.border = true,
        this.fontSize = font18,
        this.padding,
        this.readOnly = false,
        this.onTap,
        this.iconData,
        this.autofillHints,
        this.maxLength,
        this.maxLines,
        this.focusNode,
        this.obscureText,
        this.isRequired = false});

  final Widget? prefix;

  final String? hintText;
  final String? labelText;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? labelTextStyle;
  final TextCapitalization? textCapitalization;
  final Widget? suffix;

  final TextInputType? textInputType;
  @override
  final TextEditingController? controller;
  final bool? border;
  final FocusNode? focusNode;
  final bool? obscureText;
  final double? fontSize;
  final EdgeInsets? padding;
  final bool readOnly;
  final bool isRequired;
  final IconData? iconData;
  final int? maxLength;
  final int? maxLines;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatter;
  final bool? filled;
  final Color? fillColor;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Padding(
        padding:padding?? const EdgeInsets.symmetric(vertical: 6.0),
        child: TextField(
          focusNode: focusNode,
          autofillHints: autofillHints,
          onTap: onTap,
          obscureText: obscureText ?? false,
          onChanged: onChanged,
          cursorColor: AppColor.secondaryColor,
          style: textStyle ??
              Get.textTheme.bodyMedium!
                  .copyWith(color: Colors.black, fontSize: fontSize,fontWeight: FontWeight.bold,),
          keyboardType: textInputType,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          textInputAction: TextInputAction.next,
          controller: controller,
          readOnly: readOnly,
          inputFormatters: inputFormatter,
          maxLength: maxLength,
          decoration: InputDecoration(
            contentPadding: padding ??
                const EdgeInsets.only(left: 18.0, top: 8.0, bottom: 8.0, right: 18.0),
            prefixIcon: prefix,
            suffixIcon: iconData != null
                ? Icon(
              iconData,
              color: Colors.grey,
            )
                : suffix,
            hintText: hintText??"".tr,
            labelText: labelText.toString() == "" || labelText == null
                ? null
                : labelText!.tr,
            counterText: "",
            filled: filled ?? true,
            fillColor: fillColor ?? Colors.white,
            helperText: isRequired == true ? "* ${'requiredText'}" : null,
            helperStyle: Get.textTheme.bodySmall!
                .copyWith(color: Colors.red, fontSize: font16),
            hintStyle: hintTextStyle ??  Get.textTheme.bodySmall!.copyWith(
                color: Colors.grey.withOpacity(0.9), fontSize: fontSize),
            labelStyle:labelTextStyle ?? Get.textTheme.bodySmall!
                .copyWith(color: Colors.black, fontSize: fontSize),
            enabledBorder: border == true
                ? OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 0.3,
              ),
              borderRadius: BorderRadius.circular(20.0),
            )
                : null,
            focusedBorder: border == true
                ? OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            )
                : null,
          ),
        ),
      ),
    );
  }
}

class MaskedTextInputFormatter extends TextInputFormatter {
  final String mask;
  final String separator;

  MaskedTextInputFormatter({
    required this.mask,
    required this.separator,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length &&
            mask[newValue.text.length - 1] == separator) {
          return TextEditingValue(
            text:
            '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}
