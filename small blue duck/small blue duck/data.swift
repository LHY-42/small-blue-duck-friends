//
//  data.swift
//  small blue duck
//
//  Created by FAITH CHONG RUI EN stu on 9/7/22.
//

import Foundation

struct Friend: Identifiable, Codable {
    var id = UUID()
    
    var name: String
    var school: String
    var attack: Float
    var defence: Float
}
