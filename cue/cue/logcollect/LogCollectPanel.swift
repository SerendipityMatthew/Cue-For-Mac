//
//  LogCollectPanel.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct LogCollectPanel: View {
    var body: some View {
        VStack{
            HStack{
                
            }
            .frame(width: 786, height: 430, alignment: .top)
            .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.6))
            .cornerRadius(10)
            HStack{
                Text("")
                    .frame(width: 600, height: 118, alignment: .leading)
                    .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.6))
                    .cornerRadius(10)
                
                Button("发送"){
                    
                }
                .frame(width: 168, height: 44, alignment: .center)
                .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.6))
                .cornerRadius(10)

            }.frame(width: 786, height: 118, alignment: .leading)
        }
        .frame(width: 786, height: 700, alignment: .top)
        .background(Color.black)
    }
}

struct LogCollectPanel_Previews: PreviewProvider {
    static var previews: some View {
        LogCollectPanel()
    }
}
