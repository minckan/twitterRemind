//
//  User.swift
//  TweeterRemind
//
//  Created by MZ01-MINCKAN on 2023/03/16.
//

import FirebaseAuth


struct User {
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: URL?
    let uid: String
    var isCurrentUser : Bool {
        return Auth.auth().currentUser?.uid == uid
    }
    var isFollowed = false
    var stats: UserRelationStats?
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.username = dictionary["username"] as? String ?? ""
    
        if let profileImageUrlString = dictionary["profileImageUrl"] as? String {
            guard let url = URL(string: profileImageUrlString) else {return}
            self.profileImageUrl = url
        }
    }
}

struct UserRelationStats {
    var following : Int
    var followers : Int
}
