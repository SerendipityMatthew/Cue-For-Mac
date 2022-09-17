//
//  LogKeywordTableTitle.swift
//  cue
//
//  Created by Matthew on 2022/6/8.
//

import SwiftUI

struct LogKeywordTableTitle: View {
    var body: some View {
        HStack(alignment: VerticalAlignment.center){

         
            Group(){
                Text("关键词")
                
            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
            Group(){
                Text("忽略大小写")
            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
            Group(){
                Text("忽略空格")
            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))

            Group(){
                Text("颜色选择器")
            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
            Group(){
                Text("关闭")
            }.frame(width: 150, height: 30)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.8))
        }
    }
}

struct LogKeywordTableTitle_Previews: PreviewProvider {
    static var previews: some View {
        LogKeywordTableTitle()
    }
}
