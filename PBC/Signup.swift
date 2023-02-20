//
//  Join_membership.swift
//  PBC
//
//  Created by 천성우 on 2023/02/18.
//

import SwiftUI

struct Signup: View {
    
    @State private var student_id: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var nickname: String = ""
    @State private var graduate: Bool = false
    @State private var major: Bool = true
    
    
    var body: some View {
        VStack{
            Image(systemName: "apple.logo")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.bottom)
            TextField("이름을 입력해주세요 *", text: $name)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
            HStack{
                TextField("학번을 입력해주세요 *", text:$student_id)
                    .padding()
                    .frame(width: 250, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                Button{} label: {
                    Text("중복확인")
                        .foregroundColor(.pink)
                        .frame(width: 90, height: 50)
                }
                .background(.white)
                .border(.pink, width: 1)
                .cornerRadius(10)
            }
            HStack{
                TextField("닉네임을 입력해주세요 *", text:$nickname)
                    .padding()
                    .frame(width: 250, height: 50)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                Button{} label: {
                    Text("중복확인")
                        .foregroundColor(.pink)
                        .frame(width: 90, height: 50)
                }
                .background(.white)
                .border(.pink, width: 1)
                .cornerRadius(10)
            }
            SecureField("비밀번호를 입력해주세요 *", text: $password)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
            
            }
        }
    }


struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
