//
//  SettingView.swift
//  PBC
//
//  Created by 천성우 on 2023/02/20.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
//        NavigationView{
//            NavigationLink(
//                destination: LoginView().navigationBarBackButtonHidden(true),
//                label: {
//                    Text("로그아웃")
//                        .frame(width: 330, height: 10)
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(.blue)
//                        .cornerRadius(10)
//                })
//        }
        Button {
                   self.presentationMode.wrappedValue.dismiss()
               } label: {
                   Text("로그아웃")
                   
               }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
