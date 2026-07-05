# 📱 ITI Flutter & Dart Training

Welcome to the repository for the **one-month Flutter & Dart training** program at the **Information Technology Institute (ITI)**. 

---

## Repository Structure




- **[01 Tasks docs](file:///media/manar-elhabbal/Elhabbal/ITI/01%20Tasks%20docs)**: Contains the task specifications and documentation provided by the instructors.
- **[02 dart tasks](file:///media/manar-elhabbal/Elhabbal/ITI/02%20dart%20tasks)**: Practical assignments demonstrating core Dart programming concepts (OOP, Null Safety, Collection Types, etc.).
- **[03 flutter tasks](file:///media/manar-elhabbal/Elhabbal/ITI/03%20flutter%20tasks)**: User interface, state management, and full-featured Flutter mobile applications.

---

##  Training Log & Tasks Progress

### Dart Tasks (Week 1)

| Task | Title | Key Concepts | Status | Reference Code |
| :--- | :--- | :--- | :---: | :--- |
| **Task 01** | Student Information | `var`, `final`, `const`, `dynamic`, Null Safety | 🔄 In Progress | [01_students_info.dart](file:///media/manar-elhabbal/Elhabbal/ITI/02%20dart%20tasks/Task_01/01_students_info.dart) |

---

##  Study Notes 


<details>
<summary><b> Day 1</b></summary>

Here is a quick reference guide on the different variable declaration keywords in Dart, their characteristics, and best practices.

#### 1. `var`
* **Type Inference**: Dart automatically determines the variable's type based on its initial value.
* **Fixed Type**: Once initialized, the type is locked and cannot change.
* **Mutable**: The value itself *can* be modified, provided the new value matches the initial type.

```dart
var name = "Manar"; // Inferred as String
name = "Ali";       // ✅ Valid modification
name = 123;         // ❌ Compile-time Error (cannot assign int to String)
```
*💡 **Best Practice**: Use when the type is obvious from the assigned value.*

---

#### 2. `dynamic`
* **Deferred Checking**: Type checking is bypassed at compile time and resolved at runtime.
* **Mutable Type**: The variable can store and switch between values of *any* type.
* **Risk**: Allows call access to any method or property without compiler warnings, which can lead to runtime crashes.

```dart
dynamic value = "Hello";
value = 42;         // ✅ Valid (String to int)
value = true;       // ✅ Valid (int to bool)

dynamic x = 10;
print(x.length);    // ❌ Compiles fine, but crashes at runtime (int has no length property)
```
*💡 **Best Practice**: Restrict use to situations dealing with unknown/dynamic data inputs, such as raw JSON API responses.*

---

#### 3. `final`
* **Single Assignment**: The variable can only be set once.
* **Runtime Initialization**: The value is determined at runtime (e.g., fetching current time or loading a file).
* **Shallow Immutability**: The variable reference cannot change, but mutable object members (like lists) can still be modified.

```dart
final time = DateTime.now(); // ✅ Initialized at runtime

final list = [1, 2];
list.add(3);                 // ✅ Valid (the list content changes, but the list reference is final)
list = [4, 5];               // ❌ Compile-time Error (cannot reassign final reference)
```
*💡 **Best Practice**: Use for values that should remain constant once set during execution.*

---

#### 4. `const`
* **Compile-Time Constant**: Must be initialized with a value fully known during compilation.
* **Deep Immutability**: Both the variable reference and the assigned value/object are recursively frozen.

```dart
const pi = 3.14159;          // ✅ Valid compile-time constant
const now = DateTime.now();  // ❌ Compile-time Error (DateTime.now() is evaluated at runtime)

const list = [1, 2];
list.add(3);                 // ❌ Unsupported Operation Exception (list is completely immutable)
```
*💡 **Best Practice**: Use for strict mathematical constants, hardcoded configuration values, or immutable UI widget definitions.*

---

###  Quick Comparison Matrix

| Keyword | Type Fixed | Reassignable | Compile-Time Constant | Immutability Scope |
| :--- | :---: | :---: | :---: | :--- |
| **`var`** | ✅ Yes | ✅ Yes | ❌ No | Mutable |
| **`dynamic`** | ❌ No | ✅ Yes | ❌ No | Fully Mutable |
| **`final`** | ✅ Yes | ❌ No | ❌ No | Reference only |
| **`const`** | ✅ Yes | ❌ No | ✅ Yes | Deeply Immutable (value & reference) |

### 🛠️ Key Takeaways
* Use **`var`** for standard mutable variables.
* Use **`final`** for variables whose value is computed at runtime but should not change.
* Use **`const`** for values known before running the application.
* Avoid **`dynamic`** unless dynamic payload processing is strictly required.

</details>

---


