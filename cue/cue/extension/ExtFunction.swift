//
//  ExtFunction.swift
//  cue
//
//  Created by Matthew on 2022/5/31.
//

import Foundation


// Array 扩展
public extension Array where Element: Equatable {
   
   /// 去除数组重复元素
   /// - Returns: 去除数组重复元素后的数组
   func removeDuplicate() -> Array {
      return self.enumerated().filter { (index,value) -> Bool in
           return self.firstIndex(of: value) == index
       }.map { (_, value) in
           value
       }
   }
}

