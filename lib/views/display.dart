import 'package:flutter/material.dart';
import 'package:studybridgedashboard/views/results/add_results.dart';
import 'package:studybridgedashboard/views/results/all_results.dart';
import 'package:studybridgedashboard/views/student/add_student.dart';
import 'package:studybridgedashboard/views/student/all_students.dart';
import 'package:studybridgedashboard/views/teacher/add_teacher.dart';
import 'package:studybridgedashboard/views/teacher/all_teachers.dart';
import 'add_school/add_school.dart';
import 'attendence/student_attendance.dart';
import 'class/promote_class.dart';
import 'class_routine/class_routine_form.dart';
import 'class_routine/class_routine_table.dart';
import 'expenses/add_expense.dart';
import 'expenses/all_expenses.dart';
import 'student_fee/add_student_payment.dart';
import 'student_fee/fee_collection.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AllStudents()));
                },
                child: const Text('All Students'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddStudent()));
                },
                child: const Text('Add Students'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AllTeachers()));
                },
                child: const Text('All Teachers'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddTeacher()));
                },
                child: const Text('Add Teacher'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AllResults()));
                },
                child: const Text('All Results'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddResults()));
                },
                child: const Text('Add Results'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AllClassRoutine()));
                },
                child: const Text('All Class Routine'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddClassRoutine()));
                },
                child: const Text('Add Class Routine'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PromoteClass()));
                },
                child: const Text('Promote Class'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddSchool()));
                },
                child: const Text('Add School'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const StudentAttendance()));
                },
                child: const Text('Student Attendance'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddStudentPayment()));
                },
                child: const Text('Add Student Payment'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FeeCollection()));
                },
                child: const Text('Fee Collection'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AllExpenses()));
                },
                child: const Text('All Expenses'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddExpense()));
                },
                child: const Text('Add Expense'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
