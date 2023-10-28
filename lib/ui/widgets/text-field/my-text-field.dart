import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller;

  String label;

  String hint;

  TextInputType keyboardType;

  TextInputAction textInputAction;

  TextAlign textAlign;

  int minLines;
  int maxLines;

  int? maxLength;

  bool isValid;

  String errorMessage;

  bool isMandatory;

  String suffix;

  IconData? iconData;

  Function()? onTapIcon;

  Color filledColor;

  Color enabledBorderColor;

  Color disabledBorderColor;

  MyTextField(
      {Key? key,
        required this.controller,
        this.label = '',
        this.hint = '',
        this.isMandatory = false,
        this.iconData,
        this.suffix = '',
        this.keyboardType = TextInputType.text,
        this.textInputAction = TextInputAction.next,
        this.textAlign = TextAlign.right,
        this.maxLines = 1,
        this.minLines = 1,
        this.maxLength,
        this.isValid = true,
        this.errorMessage = '',
        this.onTapIcon,
        this.filledColor = Colors.transparent,
        this.disabledBorderColor = RefColor.pastelBlue,
        this.enabledBorderColor = RefColor.darkPink})
      : super(key: key);

  MyTextField.formattedDigits(
      {Key? key,
        required this.controller,
        this.label = '',
        this.hint = '',
        this.isMandatory = false,
        this.iconData,
        this.suffix = '',
        this.keyboardType = TextInputType.number,
        this.textInputAction = TextInputAction.next,
        this.textAlign = TextAlign.left,
        this.maxLines = 1,
        this.minLines = 1,
        this.maxLength,
        this.isValid = true,
        this.errorMessage = '',
        this.onTapIcon,
        this.filledColor = Colors.transparent,
        this.disabledBorderColor = RefColor.pastelBlue,
        this.enabledBorderColor = RefColor.darkPink})
      : super(key: key);

  MyTextField.phone(
      {Key? key,
        required this.controller,
        this.label = '',
        this.hint = '',
        this.isMandatory = false,
        this.iconData,
        this.suffix = '',
        this.keyboardType = TextInputType.phone,
        this.textInputAction = TextInputAction.next,
        this.textAlign = TextAlign.left,
        this.maxLines = 1,
        this.minLines = 1,
        this.maxLength,
        this.isValid = true,
        this.errorMessage = '',
        this.onTapIcon,
        this.filledColor = Colors.transparent,
        this.disabledBorderColor = RefColor.pastelBlue,
        this.enabledBorderColor = RefColor.darkPink})
      : super(key: key);

  MyTextField.singleLineText(
      {Key? key,
        required this.controller,
        this.label = '',
        this.hint = '',
        this.isMandatory = false,
        this.iconData,
        this.suffix = '',
        this.keyboardType = TextInputType.text,
        this.textInputAction = TextInputAction.next,
        this.textAlign = TextAlign.right,
        this.maxLines = 1,
        this.minLines = 1,
        this.maxLength,
        this.isValid = true,
        this.errorMessage = '',
        this.onTapIcon,
        this.filledColor = Colors.transparent,
        this.disabledBorderColor = RefColor.pastelBlue,
        this.enabledBorderColor = RefColor.darkPink})
      : super(key: key);

  MyTextField.multiLineText(
      {Key? key,
        required this.controller,
        this.label = '',
        this.hint = '',
        this.isMandatory = false,
        this.iconData,
        this.suffix = '',
        this.keyboardType = TextInputType.multiline,
        this.textInputAction = TextInputAction.newline,
        this.textAlign = TextAlign.right,
        this.maxLines = 12,
        this.minLines = 3,
        this.maxLength,
        this.isValid = true,
        this.errorMessage = '',
        this.onTapIcon,
        this.filledColor = Colors.transparent,
        this.disabledBorderColor = RefColor.pastelBlue,
        this.enabledBorderColor = RefColor.darkPink})
      : super(key: key);

  MyTextField.fillPrimary(
      {Key? key,
        required this.controller,
        this.label = '',
        this.hint = '',
        this.isMandatory = false,
        this.iconData,
        this.suffix = '',
        this.keyboardType = TextInputType.text,
        this.textInputAction = TextInputAction.done,
        this.textAlign = TextAlign.center,
        this.maxLines = 1,
        this.minLines = 1,
        this.maxLength,
        this.isValid = true,
        this.errorMessage = '',
        this.onTapIcon,
        this.filledColor = SysColor.primaryContainer,
        this.disabledBorderColor = Colors.transparent,
        this.enabledBorderColor = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Visibility(
            visible: iconData != null,
            child: InkWell(
              splashFactory: NoSplash.splashFactory,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                if (onTapIcon != null) {
                  onTapIcon!();
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Icon(
                  iconData,
                  color: SysColor.primary,
                  size: 12,
                ),
              ),
            ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(color: SysColor.onSurface),
          ),
          Visibility(
              visible: isMandatory,
              child: Text(
                '*',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(color: SysColor.error),
              ))
        ]),
        SizedBox(
          height: 4,
        ),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          textAlign: textAlign,
          textAlignVertical: TextAlignVertical.center,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            // labelText: label,
            counterText: '',
            errorText: !isValid ? '' : null,
            alignLabelWithHint: false,
            filled: true,
            isDense: true,
            fillColor: filledColor,

            contentPadding: EdgeInsets.fromLTRB(
              // keyboardType == TextInputType.phone
                textAlign == TextAlign.left
                    ? 0
                    : isValid
                    ? 16
                    : 8,
                12,
                // keyboardType == TextInputType.text
                textAlign == TextAlign.right
                    ? 16
                    : isValid
                    ? 16
                    : 0,
                12),

            labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: SysColor.onSurface),
            errorStyle: const TextStyle(height: 0),

            suffixIcon:
            // (!isValid && (keyboardType == TextInputType.text))
            //     ?
            // Row(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: const [
            //           Padding(
            //               padding: EdgeInsets.only(bottom: 2),
            //               child: Icon(
            //                 Icons.error_outline,
            //                 color: SysColor.error,
            //               )),
            //         ],
            //       )
            //     :
            keyboardType == TextInputType.phone
                ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 1.5),
                  child: Text("98 + ",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black)),
                ),
              ],
            )
                : suffix.isNotEmpty
                ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(suffix,
                      style:
                      Theme.of(context).textTheme.labelMedium!.copyWith(color: SysColor.onSurface)),
                ),
                SizedBox(
                  width: 8,
                )
              ],
            )
                : null,

            // prefixIcon: (!isValid && (keyboardType == TextInputType.phone || keyboardType == TextInputType.number))
            //     ? Row(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Padding(
            //               padding: EdgeInsets.only(bottom: 2, right: keyboardType == TextInputType.number ? 16 : 0),
            //               child: Icon(
            //                 Icons.error_outline,
            //                 color: SysColor.error,
            //               )),
            //         ],
            //       )
            //     : null,

            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: SysColor.error, width: 2.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: enabledBorderColor, width: 2.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: disabledBorderColor, width: 0.5),
              borderRadius: BorderRadius.circular(4.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: enabledBorderColor, width: 1.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: enabledBorderColor, width: 2.0),
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            isValid ? hint : errorMessage,
            style:
            Theme.of(context).textTheme.labelSmall!.copyWith(color: isValid ? SysColor.onSurface : SysColor.error),
          ),
        )
      ],
    );
  }
}