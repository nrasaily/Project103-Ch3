import UIKit

var greeting = "Hello, playground"

var arr1: [String] = ["Richard", "Rames", "Nar", "Emilio", "Ramesh"]
var ages: [Int] = [10, 20, 30, 40]

var person: [String: Int] = ["Richard": 30, "Rames": 20, "Nar": 10, "Emilio": 25]

print(person);

print(person["Richard"]!)

let set1: Set<String> = ["apple", "banana", "cayenne", "apple"]

print(set1)
print(arr1)

var arr2: [Int] = [1, 2, 3, 4, 5]
arr2.remove(at: 2)
print(arr2)
if arr2.contains(4) {
    print(true)
    
}

//Direct addition
// Challenge
var countryCapital: [String: String] = ["India": "New Delhi", "USA": "Washington D.C.", "China": "Beijing"]

countryCapital["France"] = "Paris"
print(countryCapital)


// Challege

var colors: Set<String> = ["Red", "Blue", "Green", "Yellow"]
colors.insert("Orange")
colors.remove("Green")
print(colors)

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



print("Students Records Summary:\n")

for studentName in studentNames {
    print("Student: \(studentName)\n")
    print("Grades: \(studentsGrades[studentName]!)\n")
    let avgNumber = calculateAverage(grades: studentsGrades[studentName]!);
    let avgFormattedString: String = String(format: "%.2f", avgNumber);
    print(avgFormattedString)
    
}
//
