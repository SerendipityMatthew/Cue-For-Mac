//
//  CuePortPara.swift
//  cue
//
//  Created by Matthew on 2022/5/28.
//

import Foundation

struct CuePortPara:Identifiable {
    var portParaName: String
    var paraDataList: [String]
    var id :String {
        portParaName
    }
}
