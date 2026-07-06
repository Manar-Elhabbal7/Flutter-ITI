//Author : Manar Elhabbal


void solve() {
  List<Map<String, dynamic>> students = [
    {"name": "Manar", "age": 21, "phone": null, "degree": 90},
    {"name": "Menna", "age": 34, "phone": "010xxxxx", "degree": 80},
    {"name": "Ahmed", "age": 27, "phone": "012xxxxx", "degree": 50},
  ];

  List<String> sucessful = [];

  for (var st in students) {
    if (st["degree"] > 60) sucessful.add(st['name']);
  }

  print("Sucessful Students are : ");
  for (var st in sucessful) {
    print(st);
  }
  for (var st in students) {
    if (st['phone'] == null) {
      print("No phone");
    }
  }

  students.sort((a, b) => b["degree"].compareTo(a["degree"]));

  print("Students sorted by degree:");
  print(students);
  print("Top student: ${students.first['name']}");
}

int main() {
  solve();
  return 0;
}
/*Task 5 — Mini Student System
    • Create a List of Maps containing 3 students.
    • Each student should have:
    • - name
    • - age
    • - phone (nullable)
    • - degree
    • Using loops and conditions:
    • - Print successful students only
    • - Print 'No Phone' if phone is null
    • - Print the student with the highest degree ( i will sort then print :)
  */