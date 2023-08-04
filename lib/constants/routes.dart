import 'package:get/get.dart';
import 'package:studybridgedashboard/views/class_routine/class_routine_form.dart';
import 'package:studybridgedashboard/views/dashboard/dashboard.dart';
import 'package:studybridgedashboard/views/expenses/add_expense.dart';
import 'package:studybridgedashboard/views/expenses/all_expenses.dart';
import 'package:studybridgedashboard/views/results/add_results.dart';
import 'package:studybridgedashboard/views/results/all_results.dart';
import 'package:studybridgedashboard/views/student/add_student.dart';
import 'package:studybridgedashboard/views/student/all_students.dart';
import 'package:studybridgedashboard/views/student_fee/add_student_payment.dart';
import 'package:studybridgedashboard/views/student_fee/fee_collection.dart';

import '../views/class/promote_class.dart';
import '../views/login/login.dart';
import '../views/splash_screen/splash_screen.dart';
import '../views/teacher/add_teacher.dart';
import '../views/teacher/all_teachers.dart';

class MyRoutes {
  /// welcome screen comes first as initial route
  /// these are all the basic routes
  static String splash = '/splash';
  static String login = '/welcome';
  static String dashboard = '/dashboard';
  static String allTeachers = '/all-teachers';
  static String addTeacher = '/add-teachers';
  static String allStudents = '/all-students';
  static String addStudent = '/add-student';
  static String addSchool = '/add-school';
  static String promoteClass = '/promote-class';
  static String classRoutine = '/class-routine';
  static String allExpense = '/add-expense';
  static String addExpense = '/add-expense';
  static String allResults = '/all-results';
  static String addResults = '/add-results';
  static String feeCollection = '/fee-collection';
  static String addPayment = '/add-payment';

  static String getSplash() => splash;
  static String getLogin() => login;
  static String getDashboard() => dashboard;
  static String getAllTeachers() => allTeachers;
  static String getAddTeacher() => addTeacher;
  static String getAllStudent() => allStudents;
  static String getAddStudent() => addStudent;
  static String getPromoteClass() => promoteClass;
  static String getClassRoutine() => classRoutine;
  static String getAllExpense() => allExpense;
  static String getAddExpense() => addExpense;
  static String getAllResults() => allResults;
  static String getAddResults() => addResults;
  static String getFeeCollection() => feeCollection;
  static String getAddPayment() => addPayment;

  static List<GetPage> appRoutes() => [
        GetPage(
            name: getSplash(),
            transition: Transition.topLevel,
            page: () => const SplashScreen(),
        ),
        GetPage(
            name: getLogin(),
            transition: Transition.topLevel,
            page: () => const Login(),
        ),
        GetPage(
            name: getDashboard(),
            transition: Transition.topLevel,
            page: () => const Dashboard(),
        ),
        GetPage(
            name: getAllTeachers(),
            transition: Transition.topLevel,
            page: () =>  const AllTeachers(),
        ),
        GetPage(
            name: getAddTeacher(),
            transition: Transition.topLevel,
            page: () =>  const AddTeacher(),
        ),
        GetPage(
            name: getAllStudent(),
            transition: Transition.topLevel,
            page: () =>  const AllStudents(),
        ),
        GetPage(
            name: getAddStudent(),
            transition: Transition.topLevel,
            page: () =>  const AddStudent(),
        ),
        GetPage(
            name: getPromoteClass(),
            transition: Transition.topLevel,
            page: () =>  const PromoteClass(),
        ),
        GetPage(
            name: getClassRoutine(),
            transition: Transition.topLevel,
            page: () =>  const AddClassRoutine(),
        ),
        GetPage(
            name: getClassRoutine(),
            transition: Transition.topLevel,
            page: () =>  const AddClassRoutine(),
        ),
        GetPage(
            name: getAllExpense(),
            transition: Transition.topLevel,
            page: () =>  const AllExpenses(),
        ),
        GetPage(
            name: getAddExpense(),
            transition: Transition.topLevel,
            page: () =>  const AddExpense(),
        ),
        GetPage(
            name: getAllResults(),
            transition: Transition.topLevel,
            page: () =>  const AddResults(),
        ),
        GetPage(
            name: getAddResults(),
            transition: Transition.topLevel,
            page: () =>  const AddResults(),
        ),
        GetPage(
            name: getFeeCollection(),
            transition: Transition.topLevel,
            page: () =>  const FeeCollection(),
        ),
        GetPage(
            name: getAddPayment(),
            transition: Transition.topLevel,
            page: () =>  const AddStudentPayment(),
        ),
      ];
}
