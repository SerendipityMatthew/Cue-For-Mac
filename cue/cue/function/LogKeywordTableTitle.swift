//
//  LogKeywordTableTitle.swift
//  cue
//
//  Created by Matthew on 2022/6/8.
//

import SwiftUI

struct LogKeywordTableTitle: View {
    var body: some View {
        HStack(){
            Text("关键词")
            Spacer()
            Text("忽略大小写")
            Spacer()
            Text("忽略空格")
            Spacer()
            Text("颜色选择器")
            Spacer()
            Text("关闭")
            Spacer()
        }
    }
}

struct LogKeywordTableTitle_Previews: PreviewProvider {
    static var previews: some View {
        LogKeywordTableTitle()
    }
}
