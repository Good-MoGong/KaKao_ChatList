//
//  ContentView.swift
//  ChatListUI
//
//  Created by 안지영 on 2023/06/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("채팅")
                    .font(.system(size: 35))
                    .frame(width: 230, alignment: .leading)
                
                Group {
                    
                    Button {
                        print("대화 검색")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                    }
                    .padding(.trailing, 8)
                    
                    
                    Button {
                        print("새로운 대화 생성")
                    } label: {
                        Image(systemName: "plus.message")
                            .foregroundColor(.black)
                    }
                    .padding(.trailing, 8)
                    
                    
                    Button {
                        print("설정")
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(.black)
                    }
                    
                }
                .font(.system(size: 20))
            }
            List(member) { member in
                Button {
                    print("대화창 들어가기")
                } label: {
                    
                    HStack {
                        Image(member.image)
                            .resizable()
                            .frame(width: 55, height: 55)
                            .cornerRadius(20)
                        VStack {
                            Text("\(member.name)")
                                .font(.system(size: 18))
                                .foregroundColor(.black)
                                .frame(width: 230, alignment: .leading)
                            Text("\(member.chatDetail)")
                                .frame(width: 230, alignment: .leading)
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.leading)
                            // lineLimit으로 몇줄까지만 보여줄건지
                                .lineLimit(2)
                            // lineLimit 했을때 어디를 줄일것인지 표시, 디폴트는 tail
                                .truncationMode(.tail)
                            
                            
                        }
                        VStack {
                            Text("\(member.date)")
                                .frame(width: 60, alignment: .trailing)
                                .foregroundColor(.secondary)
                                .font(.system(size: 13))
                            
                            
                            // 여긴 지금 의미 없음,, Notification을 사용해서 푸쉬받아야함.
                            Text("\(member.isRemainMessages)")
                                .frame(width: 30, height: 20)
                                .foregroundColor(.white)
                                .background(Color.red)
                                .cornerRadius(20)
                            
                        }
                        
                    }
                    
                }
                // 리스트에서 row를 나누는 separator 없애기
                .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            
            
            // 탭바
            TabView {
                Text("")
                    .tabItem {
                        Image(systemName: "person")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "message")
                    }
                // 몇개 안읽었는지 보여주는거,, 근데 여길 어떻게,, 하지,,
                    .badge(8)
                Text("")
                    .tabItem {
                        Image(systemName: "bag")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "ellipsis")
                    }
                
            }
            .frame(height: 50)
            
            
        }
        .frame(width: .infinity, height: .infinity)
    }
    
    /*
     구현하고 싶은거
     1) 메세지 몇개 왔는지 띄우기 -> 몇개 온거 더해서 안읽은 메세지에 보내기
     2) 날짜 순서대로 나열하기
     */
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
