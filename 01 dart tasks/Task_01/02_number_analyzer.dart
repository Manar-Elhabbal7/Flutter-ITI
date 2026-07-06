//Author : Manar Elhabbal

void solve() {
  List<int> nums = [1, 12, 4, 20, 9];
  int sum = 0, mx = nums[0];

  print('Even Numbers are : ');

  int idx = 0;
  while (idx < nums.length) {
    sum += nums[idx];
    if (nums[idx] > mx) {
      mx = nums[idx];
    }
    if (idx % 2 == 0) {
      print(nums[idx]);
    }
  }

  print('Sum of the nums is  : $sum');
  print('Max number in the nums is :$mx');
}

int main() {
  solve();
  return 0;
}

/*Task 2 — Number Analyzer
    • Create a List of numbers.
    • Using a loop, print:
    • - Even numbers only
    • - Sum of numbers
    • - Largest number
    • Use if conditions inside the loop.
*/
