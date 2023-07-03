//
//  ChatListCell.swift
//  ChatList_UIKit
//
//  Created by 안지영 on 2023/07/02.
//

import UIKit

// 스토리보드에 만들어놓은 cell을 뜻함. 컨트롤러랑 cell을 이어주는 뷰
// cocoatouch뷰
class ChatListCell: UITableViewCell {

    // 이미지뷰
    @IBOutlet weak var mainImageView: UIImageView!
    
    // 채팅창 이름
    @IBOutlet weak var chatNameLabel: UILabel!
    
    // 채팅 내용
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // 날짜
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        // 이미지 모서리 없애기
        mainImageView.layer.cornerRadius = 30
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
        // Configure the view for the selected state
        
        
        
        
        
    }

}
