//
//  CueSerialPortPara.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI

struct CueSerialPortPara: View {
    @State var baudRateSelection: String = ""
    @State var dataBitsSelection: String = ""
    @State var paritySelection: String = ""
    @State var stopBitsSelection: String = ""

    
    var baudRateList = BaudrateConstants.BaudRate_List
    var dataBitsList = DataBitsConstants.DataBits_List
    var parityList = ParityConstants.Parity_List
    var stopBitsList = StopBitsConstants.StopBits_List
    
    var body: some View {
        VStack {
            HStack{
                Text("端口号")
                    .frame(alignment: .leading)
                   
                Spacer()
                Picker(selection: $baudRateSelection, label: Text("")) {
                    let _ = print("election 1111 election = \(baudRateSelection)")
                    ForEach(baudRateList, id: \.self) { data in
                        Text(data)
                            .background(Color(red: 55/255, green: 55/255, blue:64/255).opacity(0.2))
                            .cornerRadius(5)
                    }
                }
                .pickerStyle(.menu)
                .frame(width: 168, height: 22, alignment: .bottomLeading)
                
                
            }
            .frame(width: 230, alignment: .center)
            
            HStack{
                Text("数据位")
                    .frame(alignment: .leading)
                   
                Spacer()
                Picker(selection: $dataBitsSelection, label: Text("")) {
                    let _ = print("election 1111 election = \(dataBitsSelection)")
                    ForEach(dataBitsList, id: \.self) { data in
                        Text(data)
                            .background(Color(red: 55/255, green: 55/255, blue:64/255).opacity(0.2))
                            .cornerRadius(5)
                    }
                }
                .pickerStyle(.menu)
                .frame(width: 168, height: 22, alignment: .bottomLeading)
                
                
            }
            .frame(width: 230, alignment: .center)
            
            HStack{
                Text("校验位")
                    .frame(alignment: .leading)
                   
                Spacer()
                Picker(selection: $paritySelection, label: Text("")) {
                    let _ = print("election 1111 election = \(paritySelection)")
                    ForEach(parityList, id: \.self) { data in
                        Text(data)
                            .background(Color(red: 55/255, green: 55/255, blue:64/255).opacity(0.2))
                            .cornerRadius(5)
                    }
                }
                .pickerStyle(.menu)
                .frame(width: 168, height: 22, alignment: .bottomLeading)
                
                
            }
            .frame(width: 230, alignment: .center)
            
            HStack{
                Text("停止位")
                    .frame(alignment: .leading)
                   
                Spacer()
                Picker(selection: $stopBitsSelection, label: Text("")) {
                    let _ = print("election 1111 election = \(stopBitsSelection)")
                    ForEach(stopBitsList, id: \.self) { data in
                        Text(data)
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
}

struct CueSerialPortPara_Previews: PreviewProvider {
    static var previews: some View {
        CueSerialPortPara()
    }
}
