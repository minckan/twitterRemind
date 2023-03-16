//
//  AuthService.swift
//  TweeterRemind
//
//  Created by MZ01-MINCKAN on 2023/03/16.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

struct AuthCredential {
    let email: String
    let password: String
    let fullname: String
    let username: String
}
