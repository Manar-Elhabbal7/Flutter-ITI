//Author : Manar Elhabbal

void solve() {
  List<Map<String, dynamic>> students = [
    {"name": "manar", "degree": 85},
    {"name": "noha", "degree": 99},
    {"name": "manar", "degree": 50},
  ];

  for (var student in students) {
    if (student["degree"] >= 85)
      print("Excellent");
    else if (student["degree"] >= 70)
      print("Very Good");
    else if (student["degree"] >= 50)
      print("Pass");
  }
}

int main() {
  solve();
  return 0;
}

/*
Task 3 — Student Grades System
    • Create a List of student degrees.
    • Using loops and conditions:
    • - If degree >= 85 print Excellent
    • - If degree >= 70 print Very Good
    • - If degree >= 50 print Pass
    • - Otherwise print Fail
*/
