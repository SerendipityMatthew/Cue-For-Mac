//
//  CueSerialPortPanel.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct CueSerialPortPanel: View {
    let serialPortParaList = ["串口", "波特率", "数据位", "校验位", "停止位"]

    var body: some View {
        VStack(){
            Text("串口参数设置")
                    .frame(alignment: .leading)
            VStack {
                ForEach(serialPortParaList, id:\.self){
                    CueSerialPortPara(paraName: $0)
                }.padding([.top, .bottom], 6)
            }
        }
        .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
        .cornerRadius(10)
        
    }
}

struct CueSerialPortPanel_Previews: PreviewProvider {
    static var previews: some View {
        CueSerialPortPanel()
    }
}
