//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
    var returnString = ""
        
    if (name == "Billy Crystal" || name == "Meg Ryan") {
           line.insert(name, at: 0)
        
        //let firstName = name.components(separatedBy:" ")
        returnString = "Welcome \(name)! You can sit wherever you like."
    }else{
        line.append(name)
        
        if line.count == 1 {
            returnString = "Welcome \(name), you're first in line!"
        }else{
            returnString = "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
     return returnString
}
    
    
    // 2
    func nowServing() -> String {
       var returnString = ""
        if line.isEmpty {
            returnString  = "There is no one to be served."
        }else{
            returnString = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
       
        return returnString
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var lineReturn = " "
        
        if line.isEmpty {
            lineReturn = "The line is currently empty."
        }else{
            lineReturn = "The line is:\n"
            for (index, name) in line.enumerated() {
                lineReturn += "\(index + 1). \(name)"
                
                if (index < line.count - 1) {
                    lineReturn += "\n"
                }
                
                }
            }
    
        return lineReturn

    }
    

}
