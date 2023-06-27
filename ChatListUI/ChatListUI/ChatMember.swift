//
//  ChatMember.swift
//  ChatListUI
//
//  Created by 안지영 on 2023/06/24.
//

import Foundation

struct Member: Identifiable {
    var id = UUID()
    var name: String
    var chatDetail: String
    var image: String
    var date: String
    var isRemainMessages: String
}


var member: [Member] = [
    Member(name: "카카오톡 선물하기", chatDetail: "교환권을 잘 사용하셨나요? \n소중한 후기를 남겨주세요", image: "카카오톡", date: "6월 17일", isRemainMessages: "1"),
    Member(name: "투썸 플레이스", chatDetail: "[투썸플레이스]\n고객님 주문하신 메뉴가 준비되었습니다. *주문자명 : ", image: "투썸", date: "6월 17일", isRemainMessages: "1"),
    Member(name: "베스킨라빈스", chatDetail: "쿠폰이 지급되었습니다. 쿠폰 번호를 확인해주세요!", image: "베라", date: "6월 16일", isRemainMessages: "1"),
    Member(name: "이니스프리", chatDetail: "(광고)[LIVE] 서두르세요! 라이브 혜택은 오전 9시 50분까지만⏳ 진행되고 있으니 빠르게", image: "이니스프리", date: "6월 16일", isRemainMessages: "1"),
    Member(name: "원티드 WANTED", chatDetail: "[원티드] 추천 포지션 안내 \n 박서연님을 위한 개발 맞춤 포지션 안내", image: "원티드", date: "6월 15일", isRemainMessages: "1"),
    Member(name: "에잇세컨즈", chatDetail: "(광고)슈퍼세일 오픈! UP TO 50%🛍️", image: "에잇세컨즈", date: "6월 15일", isRemainMessages: "1"),
    Member(name: "인프런", chatDetail: "(광고)📢 와!!! 인프런에서 'FE'stival 열렸다!!!💚 딱 2일 동안만 프론트엔드 페스티벌", image: "인프런", date: "6월 15일", isRemainMessages: "1"),
    Member(name: "테이블링", chatDetail: "대기번호 2번 고객님 지금 입장해 주세요.    -", image: "테이블링", date: "6월 14일", isRemainMessages: "1"),
    ]
