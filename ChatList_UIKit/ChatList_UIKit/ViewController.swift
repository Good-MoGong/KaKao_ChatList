//
//  ViewController.swift
//  ChatList_UIKit
//
//  Created by 안지영 on 2023/07/02.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    // 테이블뷰를 사용할때는 꼭 UITableViewDataSource 프로토콜을 채택해서 사용
    // 테이블뷰에 어떤 datasource를 보여줄 것인지 뷰컨트롤러랑 이어주는 프로토콜
    
    // 챗리스트 변수에 할당해서 사용
    var members: [Member] = member
    
    // 테이블뷰 설정 연결된 속성
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.rowHeight = 100
    }
    
    
    // UITableViewDataSource 프로토콜을 채택하면 꼭 채택해야 하는 함수
    // 섹션에 row가 몇개있을거냐 -> members 갯수만큼 있어야한다고 리턴
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    // row마다 있는 cell을 어떻게 보여줄 것이냐 -> 여기서 cell을 설정해서 그 cell 자체를 리턴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 만들어놓은 chatlistcell을 reusablecell로 나타내겠다! 그래서 chatlistcell로 타입캐스팅을 함.
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListCell", for: indexPath) as! ChatListCell
        
        cell.mainImageView.image = members[indexPath.row].image
        cell.chatNameLabel.text = members[indexPath.row].name
        cell.descriptionLabel.text = members[indexPath.row].chatDetail
        cell.dateLabel.text = members[indexPath.row].date
        
        return cell
    }
    
    
    
    
}

