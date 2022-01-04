//
//  User.swift
//  LogPassApp
//
//  Created by Александр on 04.04.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person

    static func getUser() -> User {
        User(
            login: "admin",
            password: "12345",
            person: Person.getPerson()
            )
    }
}
struct Person {
    let name: String
    let surname: String
    let personInfo: String
    let personAddInfo: String
    let image: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Император",
               surname: "Омниссия",
               personInfo: "Родился в __ веке. Любил играть в игры престолов и проводить опыты над своими примархами.\nЗаслуженная награда - Худший отец тысячелетия",
               personAddInfo: "Безумный турок, повёрнутый на золоте.\n\nРаботал в ФСБ Инквизиционной Терры.\nЯвляется поработителем травоядной расы дредноутов.\n\nПодозрительно НЕ-БОГ!",
               image: "warhammer")
    }
    
}




