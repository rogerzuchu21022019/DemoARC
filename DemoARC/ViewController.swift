//
//  ViewController.swift
//  DemoARC
//
//  Created by Vu Thanh Nam on 13/05/2022.
//

import UIKit

class ViewController: UIViewController {
    //strong
    var nam:Person?
    var sunny:Macbook?
    var nam2 :Person?
    weak var nam3 :Person?
    override func viewDidLoad() {
        super.viewDidLoad()
        createPerson()
    }
    func createPerson(){
        //nam != nil
        nam = Person(name: "Nam", macbook: nil)
        sunny = Macbook(name: "Sunny", owner: nil)
     
        print("nam ARC = \(CFGetRetainCount(nam)-1)")
        nam2 = nam
        print("nam2 ARC = \(CFGetRetainCount(nam2)-1)")
        
        nam3 = nam
        print("because nam3 is weak. So nam3 = nam2 ")
        print("nam3 ARC = \(CFGetRetainCount(nam3)-1)")

        print("----------------")
        print("nam3 ARC = \(CFGetRetainCount(nam3)-1)")
        print("nam2 ARC = \(CFGetRetainCount(nam2)-1)")
        print("because nam2 = nam . So ARC increase 1 to 2")
        print("nam ARC = \(CFGetRetainCount(nam)-1)")
    }
}

