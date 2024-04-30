class Student{
  String name;
  int age;
  String gradeL;

  Student(this.name, this.age, this.gradeL);

  void showDetails(){
    print("Student : Name : $name, Age : $age, Grade : $gradeL");
}
}

class Teacher{
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void showDetails(){
    print("Teacher : Name : $name, Age : $age, Subject : $subject");
}
}


class School {
  void showStudentAndTeacherDetails(Student student, Teacher teacher){
    student.showDetails();
    teacher.showDetails();}


}

void main() {
  // Creation of instances of Student and Teacher classes

  var student = Student("Hazel", 12, "8th");
  var teacher = Teacher("Mr. Radi", 30, "Mathematics");

  // Creating instance of School class
  var school = School();

  // Printing Student and Teacher details
  school.showStudentAndTeacherDetails(student, teacher);
}