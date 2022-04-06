//
//  onlineContacts.swift
//  PlusTestCode
//
//  Created by Macservis on 31/03/22.
//

import Foundation


class OnlineContacts {
    var nameStr: String? = ""
    var isOnline: OnOf_line.RawValue? = OnOf_line.offline.rawValue
    var imageStr: String? = ""
    
    
    init(nameStr: String?, isOnline: OnOf_line.RawValue, imageStr: String){
        self.nameStr = nameStr
        self.isOnline = isOnline
        self.imageStr = imageStr
    }
}


enum OnOf_line: String {
    case online,offline
}
