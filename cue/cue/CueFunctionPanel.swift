//
//  StartButtonImage.swift
//  cue
//
//  Created by Matthew on 2022/5/22.
//

import SwiftUI
import SVGView

struct CueFunctionPanel: View {
    var body: some View {
        HStack(alignment: .top, spacing: 20){
            Button(action: {
                print("button pressed")
            }, label: {
                Image("start_button_image")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: Alignment.leading)
            })
            .frame(width: 60, height: 60, alignment:.center)
            .buttonStyle(BorderlessButtonStyle())
            .border(Color.gray, width: 1)

            Button(action: {
                print("button pressed")
            }, label: {
                Image("stop_button_image")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: Alignment.leading)
            })
            .frame(width: 60, height: 60, alignment:.center)
            .buttonStyle(BorderlessButtonStyle())
            .border(Color.gray, width: 1)
            
            
            Button(action: {
                print("button pressed")
            }, label: {
                Image("settings_config")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: Alignment.leading)
            })
            .frame(width: 60, height: 60, alignment:.center)
            .buttonStyle(BorderlessButtonStyle())
            .border(Color.gray, width: 1)
        }
        .frame(width: 1050, height: 80, alignment: .leading)
        .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.6))
        .cornerRadius(10)
        
    }
}

struct CueFunctionPanel_Previews: PreviewProvider {
    static var previews: some View {
        CueFunctionPanel()
    }
}
