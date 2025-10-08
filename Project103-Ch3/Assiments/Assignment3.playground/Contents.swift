





class Student {
    var name: String
    var age: Int
    var grade: [Int]
    
    // Initialiser
    init(name: String, age: Int, grade: [Int]) {
        self.name = name
        self.age = age
        self.grade = grade
    }
    
    func isPassing() -> Bool {
        let averageGrade = grade.reduce(0, +)/grade.count
        return averageGrade >= 60
    }
    func printPassingStatus() {
        if isPassing(){
            print("\(name) has passed.")
        }else {
            print("\(name) has failed.")
        }
    }
}

// creating instance of the student class
let student1 = Student(name: "John", age: 16, grade: [90, 85, 92])
let student2 = Student(name: "Papa", age: 17, grade: [90, 80, 95])
let student3 = Student(name: "Samanth", age: 19, grade: [30, 60, 70])

// call to print passing status for each student
student1.printPassingStatus()
student2.printPassingStatus()
student3.printPassingStatus()
