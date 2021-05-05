//
//  LoginView.swift
//  Test
//
//  Created by 杨焱焜 on 2021/5/4.
//

import SwiftUI
import SwiftUIX

struct LoginView: View {
    @Binding var account: String
    @Binding var password: String
    @State var isTapped = false
    @Binding var isLoggedIn: Bool
    var body: some View {
        VStack {
            HStack {
                Text("Login")
                    .font(.system(size: 35, weight: .light))
                    .padding(.top, 20)
                    .padding(.horizontal)
                Spacer()
            }
            TextField("", text: $account)
                .font(.system(size: 25, weight: .light))
                .background(
                    ZStack {
                        HStack {
                            if account == "" {
                                Text("Username")
                                    .font(.system(size: 20, weight: .light))
                                    .foregroundColor(.secondary)

                                Spacer()
                            }
                        }
                    })
                .padding(.horizontal, 5)
                .background(Color.gray.opacity(0.09))
                .padding(.top, 20)
                .padding(.bottom, 10)
                .padding(.horizontal)
                .textFieldStyle(PlainTextFieldStyle())
            SecureField("", text: $password)
                .font(.system(size: 25, weight: .light))
                .background(
                    ZStack {
                        HStack {
                            if password == "" {
                            Text("Password")
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(.secondary)
                            Spacer()
                            }
                        }
                    })
                .padding(.horizontal, 5)
                .background(Color.gray.opacity(0.09))
                .padding(.top, 20)
                .padding(.bottom, 20)
                .padding(.horizontal)
                .textFieldStyle(PlainTextFieldStyle())

            Button(action: {
                if account != "" && password != "" && !isLoggedIn {
                    sleep(2)
                    isLoggedIn.toggle()
                } else if isLoggedIn {
                    sleep(1)
                    isLoggedIn.toggle()
                    account = ""
                    password = ""
                }
            }, label: {
                Text(isLoggedIn ? "Logout" : "Login")
                    .font(.title)
            })
                .padding()
                .contentShape(Rectangle())
                .background(isLoggedIn ? Color(hex: 0xC6FFC1).opacity(0.7) : Color.gray.opacity(0.2))
                .cornerRadius(15)
                .buttonStyle(PlainButtonStyle())
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(account: .constant(""), password: .constant(""), isLoggedIn: .constant(true))
    }
}
