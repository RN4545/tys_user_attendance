import 'package:get/get.dart';
import 'package:tys_user_attendance/app/data/pojo/itemPojo.dart';

class ScreenAttendanceController extends GetxController {
  var selectedYear = '2025'.obs;
  var selectedOptionLeave = "".obs;
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
  var leavesOptions = <ItemPojo>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    leavesOptions.addAll(
      [
        ItemPojo(
            title: "Regularize", imageString: "assets/images/regularize.png"),
        ItemPojo(
            title: "Apply Leave", imageString: "assets/images/apply_leave.png"),
      ],
    );
  }

  void selectMonth(String month) {
    selectedMonth.value = month;
  }

  void selectedLeave(String selectedValue) {
    selectedOptionLeave.value = selectedValue;
  }

  void selectYear(String year) {
    selectedYear.value = year;
  }
}
