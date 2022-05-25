//
//  Person.swift
//  DemoARC
//
//  Created by Vu Thanh Nam on 13/05/2022.
//

import Foundation

class Person {
    internal init(name: String, macbook: Macbook? = nil) {
        self.name = name
        self.macbook = macbook
    }
    
    let name:String
    var macbook: Macbook?
  
    
    deinit{
        print("\(name) is being deinititalized")
    }
}

class Macbook {
    internal init(name: String, owner: Person? = nil) {
        self.name = name
        self.owner = owner
    }
    
    let name : String
    var owner : Person?
    
    deinit {
        print("\(name) is being deinititalized")
    }
}

