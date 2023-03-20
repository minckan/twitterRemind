//
//  UserService.swift
//  TweeterRemind
//
//  Created by MZ01-MINCKAN on 2023/03/20.
//

import FirebaseAuth
import FirebaseDatabase

struct UserService {
    static let shared = UserService()
    
    func fetchUser(uid: String, completion: @escaping(User) -> Void) {
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else {return}
            let user = User(uid: uid, dictionary: dictionary)
            completion(user)
        }
    }
}
