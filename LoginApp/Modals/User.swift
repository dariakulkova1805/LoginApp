//
//  User.swift
//  LoginApp
//
//  Created by DARYA on 2/20/23.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "1",
            password: "1",
            person: Person(
                name: "Даша",
                age: "25",
                city: "Москва",
                education: "УрГЭУ",
                photo: "i"
            )
        )
    }
}

struct Person {
    let name: String
    let age: String
    let city: String
    let education: String
    let photo: String
}
