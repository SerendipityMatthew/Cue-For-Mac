//
//  SerialPortParaAll.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct SerialPortParaAll: View {
    var body: some View {
        VStack(){
            CueSerialPortPanel()
                .frame(width: 250, height: 293, alignment: .center)
                .background(Color(red: 38/255, green: 38/255, blue: 44/255).opacity(0.6))
                .cornerRadius(10)
            Spacer()
                .frame(width: 100,height:10)
                .background(Color.black)
            IOParaSettingPanel(title: "接受日志参数设置")
                .frame(width: 250, height: 57, alignment: .center)
                .background(Color(red: 38/255, green: 38/255, blue: 44/255).opacity(0.6))
                .cornerRadius(10)
            Spacer()
                .frame(width: 100,height:10)
                .background(Color.black)
            IOParaSettingPanel(title: "发送参数设置")
                .frame(width: 250, height: 57, alignment: .center)
                .background(Color(red: 38/255, green: 38/255, blue: 44/255).opacity(0.6))
                .cornerRadius(10)
        }
        
        .background(Color.black)
    }
}

struct SerialPortParaAll_Previews: PreviewProvider {
    static var previews: some View {
        SerialPortParaAll()
    }
}
