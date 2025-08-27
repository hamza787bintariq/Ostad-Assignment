abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;
  Person(this.name, this.address, this.age);
  @override
  void displayRole() {
    print("Role:Undefined");
  }
}

class Student extends Person {
  String studentID;
  String grade;
  List courseScores = [];
  Student(
    this.studentID,
    this.grade,
    this.courseScores,
    super.name,
    super.address,
    super.age,
  );
  void displayRole() {
    print("Role:Student");
  }

  double calculateCourseScore() {
    int total = 0;
    for (int score in courseScores) {
      total = total + score;
    }
    double averageNumber = total / courseScores.length;
    return averageNumber;
  }
}

class Teacher extends Person {
  String teacherID;
  List courseTought = [];
  Teacher(
    this.teacherID,
    this.courseTought,
    super.name,
    super.address,
    super.age,
  );
  void displayRole() {
    print("Role:Teacher");
  }

  displayCourseTought() {
    for (String singleCourse in courseTought) {
      print("-$singleCourse");
    }
  }
}

main() {
  Student hamza = Student(
    "Hamza12",
    "A",
    [95, 92, 70],
    "Hamza",
    "Mirpur12",
    18,
  );
  print("Student Information");
  hamza.displayRole();
  print("StudntID:${hamza.studentID}");
  print("Name:${hamza.name}");
  print("Age:${hamza.age}");
  print("Address:${hamza.address}");
  print("AvarageScore:${hamza.calculateCourseScore()}");

  Teacher ajijul = Teacher(
    "Ajijul",
    ["English", "Math", "Bangla"],
    "Ajijul Islam",
    "Bogura",
    25,
  );

  print("Teacher Information");
  ajijul.displayRole();
  print("Name:${ajijul.name}");
  print("teacherID:${ajijul.teacherID}");
  print("Address:${ajijul.address}");
  print("Courses Tought");
  ajijul.displayCourseTought();
}
