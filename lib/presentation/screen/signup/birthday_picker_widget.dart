import 'package:flutter/material.dart';
import 'package:hunty/common/constants/icons_constant.dart';
import 'package:hunty/common/constants/languages.dart';
import 'package:hunty/common/utils/extensions.dart';
import 'package:hunty/presentation/widgets/app_text_field.dart';
import 'package:hunty/theme/theme.dart';

class BirthdayWidget extends StatefulWidget {
  const BirthdayWidget({super.key});

  @override
  State<BirthdayWidget> createState() => _BirthdayWidgetState();
}

class _BirthdayWidgetState extends State<BirthdayWidget> {
  DateTime? _selectedDate;
  late TextEditingController controller;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: kColorYellow, // Màu tiêu đề (header) và nút chọn
              onPrimary: kColorBlack, // Màu chữ trên tiêu đề
              onSurface: kColorBlack // Màu chữ trong DatePicker
            ),
            dialogBackgroundColor: kColorWhite, // Màu nền của dialog
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        controller.text = "${picked.day}/${picked.month}/${picked.year}"; // Hiển thị ngày trên TextField
      });
    }
  }

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: controller,
      hintText: Languages.signUpBirthday.translator(context),
      suffixIcon: IconsConstant.calendar,
      isReadOnly: true,
      onIconPressed: () {
        _selectDate(context);
      },
    );
  }
}
