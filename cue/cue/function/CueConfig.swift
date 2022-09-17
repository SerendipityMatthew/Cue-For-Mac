//
//  SwiftUIView.swift
//  cue
//
//  Created by Matthew on 2022/6/14.
//

import SwiftUI

struct CueConfig : View {

    var body: some View {
        VStack{
            LogKeywordTableTitle()
            LogKeywordRow()

        }   .frame(width: 800, height: 300)
            .background(Color(red: 38/256, green: 38/256, blue: 44/256).opacity(0.6))

    }
}
