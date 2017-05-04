//
//  DataService.swift
//  social-network-clone
//
//  Created by Jing Gao on 2/5/17.
//  Copyright © 2017 Jing Gao. All rights reserved.
//

import Foundation
import Firebase

let DB_BAS = FIRDatabase.database().reference()
let STORAGE_BASE = FIRStorage.storage().reference()

class DataService {
    
    static let ds = DataService()
    
    //DB references
    private var _REF_BASE = DB_BAS
    private var _REF_POSTS = DB_BAS.child("posts")
    private var _REF_USERS = DB_BAS.child("users")
    
    //Storage references
    private var _REF_POST_IMAGES = STORAGE_BASE.child("post-pics")
    
    var REF_BASE: FIRDatabaseReference {
        return _REF_BASE
    }
    
    var REF_POSTS: FIRDatabaseReference {
        return _REF_POSTS
    }
    
    var REF_USERS: FIRDatabaseReference {
        return _REF_USERS
    }
    
    var REF_POST_IMAGES: FIRStorageReference {
        return _REF_POST_IMAGES
    }
    
    func createFirbaseDBUser(uid: String, userData: Dictionary<String, String>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    
    
}
