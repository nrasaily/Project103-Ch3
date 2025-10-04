//
//  ass.1.swift
//  Project103-Ch3
//
//  Created by Nar Rasaily on 9/27/25.
//
func calculateAverage(grades: [Double]) -> Double {
    var total: Double = 0;
    for grade in grades {
        total += grade;
    }
    return total / Double(grades.count);
}

let studentNames: [String] = ["Alice", "Bob", "Charlie", "David", "Eve"];

let studentsGrades: [String: [Double]] = [
    "Alice": [88.0, 92.0, 85.0],
    "Bob": [95.0, 90.0, 88.0],
    "Charlie": [79.0, 82.0, 85.0],
    "David": [80.0, 85.0, 90.0],
    "Eve": [92.0, 95.0, 90.0]
];



//print("Students Records Summary:\n")

for studentName in studentNames {
    print("Student: \(studentName)\n")
    print("Grades: \(studentsGrades[studentName]!)\n")
    let avgNumber = calculateAverage(grades: studentsGrades[studentName]!);
    let avgFormattedString: String = String(format: "%.2f", avgNumber);
    
}
