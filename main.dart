/// This program calculate the final grade and your letter grade
import 'dart:io';

void main() {
  print("Enter name:");
  String? name = stdin.readLineSync();
  print("The entered name is ${name}");

  print("=== Grade Calculator ===");
  
  print("Enter assignment score (0-100):");
  double assignment = double.parse(stdin.readLineSync()!);
  if ( assignment > 100) {
    print ("Error: Number exceeds the maximum allowed value of 100.");
    exit(1);
  }
  
  print("Enter midterm score (0-100):");
  double midterm = double.parse(stdin.readLineSync()!);
  if ( assignment > 100) {
    print ("Error: Number exceeds the maximum allowed value of 100.");
    exit(1);
  }
  
  print("Enter final exam score (0-100):");
  double finalExam = double.parse(stdin.readLineSync()!);
  if ( assignment > 100) {
    print ("Error: Number exceeds the maximum allowed value of 100.");
    exit(1);
  }
  
  // Calculate weighted average
  double finalGrade = (assignment * 0.2) + (midterm * 0.3) + (finalExam * 0.5);
  
  print("\n=== Results ===");
  print("Assignment: ${assignment.toStringAsFixed(1)}%");
  print("Midterm: ${midterm.toStringAsFixed(1)}%");
  print("Final Exam: ${finalExam.toStringAsFixed(1)}%");
  print("Final Grade: ${finalGrade.toStringAsFixed(1)}%");
  
  // Determine letter grade
  String letterGrade;
  if (finalGrade >= 60) {
    letterGrade = "PASSED";
  } else {
    letterGrade = "FAILED";
  }
  
  print("Letter Grade: $letterGrade");
}