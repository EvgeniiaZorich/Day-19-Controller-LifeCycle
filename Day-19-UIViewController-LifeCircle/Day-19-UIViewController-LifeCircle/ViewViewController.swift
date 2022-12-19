//
//  ViewViewController.swift
//  Day-19-UIViewController-LifeCircle
//
//  Created by Евгения Зорич on 19.12.2022.
//

import UIKit

class ViewViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    var selectedText: String?
    var selectedNumber = 0
    var selectedNumber1 = 0
    var describes = ["X-code собирает все данные и выделяет на это память", "Загружаются все View, которые есть на экране. Через View пользователь управляет приложением", "Завершается загрузка всех View. Cюда записываются все методы", "View начинает появляться", "View заканчивает появляться"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Stage \(selectedNumber)"
        textView.text = describes[selectedNumber - 1]
        }
    }

