//
//  PBC_main.swift
//  PBC
//
//  Created by 천성우 on 2023/02/18.
//

import SwiftUI

struct TabbarView: View {
    @State private var selection = 3
    
    var body: some View {
        TabView(selection: $selection) {
            EvaluationView()
                .tabItem {
                  Image(systemName: "1.square.fill")
                  Text("강의평")
                }
                .tag(1)
              CurriculumView()
                .tabItem {
                  Image(systemName: "2.square.fill")
                  Text("커리큘럼")
                }
                .tag(2)
            MainView()
                .tabItem {
                  Image(systemName: "apple.logo")
                  Text("LOGO")
                }
                .tag(3)
            RootView()
              .tabItem {
                Image(systemName: "2.square.fill")
                Text("루트추천")
              }
              .tag(4)
            SettingView()
              .tabItem {
                Image(systemName: "gearshape")
                Text("설정")
              }
              .tag(5)
            
            }
            .font(.headline)
            .navigationBarHidden(true)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
