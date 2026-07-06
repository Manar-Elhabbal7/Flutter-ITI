//Author : Manar Elhabbal

void solve() {
  List<Map<String, dynamic>> students = [
    {"name": "Manar", "age": 21, "phone": "011xxxxx", "grade": "Excellent"},
    {"name": "Menna", "age": 34, "phone": "010xxxxx", "grade": "good"},
    {"name": "Ahmed", "age": 27, "phone": "012xxxxx", "grade": "very good"},
  ];

  students.forEach((student) {
    print(student);
  });
}

int main() {
  solve();
  return 0;
}

/*Task 4 — Map & Looping
    • Create a Map for a student containing:
    • - name
    • - age
    • - phone
    • - grade
    • Loop through the Map using forEach and print all keys and values.
  */
