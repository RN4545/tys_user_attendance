import 'package:get/get.dart';

class ScreenAttendanceController extends GetxController {
  var selectedYear = '2025'.obs;
  final List<String> years = ['2025', '2024', '2023', '2022', '2021'];
  var selectedMonth = 'January'.obs;
  final List<String> months = const [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  void selectMonth(String month) {
    selectedMonth.value = month;
  }

  void selectYear(String year) {
    selectedYear.value = year;
  }
}
