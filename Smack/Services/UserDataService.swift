//
//  UserDataService.swift
//  Smack
//
//  Created by Jeremy Clerico on 06/08/2017.
//  Copyright © 2017 Jeremy Clerico. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    //Public getter - as in other classes can read it, but other classes aren't allowed to set this variable. Only this file is able to directly modify the value that 'id' is set to
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
}
