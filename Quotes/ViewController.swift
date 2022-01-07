//
//  ViewController.swift
//  Quotes
//
//  Created by Siwoo Baek on 2022/01/07.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "늦었다고 생각하면 정말 늦은거다", name: "박명수"),
        Quote(contents: "기쁨을 나누면 질투가 되고 슬픔을 나누면 무시가 된다.", name: "작자 미상"),
        Quote(contents: "진리를 알지니 진리가 너희를 자유케 하리라.", name: "요한복음"),
        Quote(contents: "삶이 있는 한 희망은 있다.", name: "키케로"),
        Quote(contents: "신은 용기있는 자를 결코 버리지 않는다.", name: "켄러")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5)) // 0 ~ 4 사이의 난수를 랜덤하게 발생
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

