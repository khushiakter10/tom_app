
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:tom_app/assets_helper/app_colors.dart';
import 'package:tom_app/assets_helper/app_fonts.dart';
import 'package:tom_app/assets_helper/app_icons.dart';
import 'package:tom_app/common_widgets/custom_textfeild.dart';



class LogActivityCalander extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const LogActivityCalander({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<LogActivityCalander> createState() => _LogActivityCalanderState();
}

class _LogActivityCalanderState extends State<LogActivityCalander> {
  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.cFFFFFF,
              onPrimary: AppColors.c2A2A2A,
              onSurface: AppColors.cFFFFFF,
              background: AppColors.c2A2A2A,
              surface: AppColors.c2A2A2A,
            ),
            dialogBackgroundColor: AppColors.c2A2A2A,
            datePickerTheme: DatePickerThemeData(
              backgroundColor: AppColors.c2A2A2A,
              dividerColor: AppColors.cFFFFFF,
              headerForegroundColor: AppColors.cFFFFFF,
              dayOverlayColor: MaterialStateProperty.all(Colors.white10),
              yearOverlayColor: MaterialStateProperty.all(Colors.white10),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.cFFFFFF,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      final selectedDate = DateFormat('dd/MM/yyyy').format(picked);
      setState(() {
        widget.controller.text = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextfield(
      isRead: true,
      textAlign: TextAlign.start,
      ontap: _selectDate,
      controller: widget.controller,
     // readOnly: true,
      borderRadius: 20.r,
      fillColor: AppColors.c2A2A2A,
      hintText: widget.hintText,
      hintTextSyle: TextFontStyle.textStyle24w400cA3A3A3poppins.copyWith(
        fontSize: 14.sp,
      ),
      style: const TextStyle(color: Colors.white),
      suffixIcon: Transform.scale(
        scale: 0.50,
        child: SvgPicture.asset(
          AppIcons.calandericon,
          height: 20,

        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter activity type';
        }
        return null;
      },
    );
  }
}
