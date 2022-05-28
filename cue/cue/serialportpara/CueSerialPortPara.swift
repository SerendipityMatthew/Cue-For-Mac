//
//  CueSerialPortPara.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct CueSerialPortPara: View {
    @State var selection: String = ""
    var dropDownList = BaudrateConstants.BaudRate_List
    
    var serialPortParaName : String
    
    init(paraName : String, dataList:[String]){
        self.serialPortParaName = paraName
        self.dropDownList = dataList
    }
    
    var body: some View {
        HStack{
            Text("\(serialPortParaName)")
                .frame(alignment: .leading)
               
            Spacer()
            Picker("",selection: $selection) {
                let _ = print("election 1111 election = \(selection)")
                ForEach(dropDownList, id: \.self) {
                    Text($0)
                        .background(Color(red: 55/255, green: 55/255, blue:64/255).opacity(0.2))
                        .cornerRadius(5)
                }
            }
            .pickerStyle(.menu)
            .frame(width: 168, height: 22, alignment: .bottomLeading)
            
            
        }
        .frame(width: 230, alignment: .center)
    }
}

struct CueSerialPortPara_Previews: PreviewProvider {
    static var previews: some View {
        CueSerialPortPara(paraName: "端口", dataList: BaudrateConstants.BaudRate_List)
    }
}
