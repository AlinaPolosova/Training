//
//  ViewController.swift
//  Training
//
//  Created by Mac on 24.07.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    var nameCells = [
        "UIView - базовый класс для всех видов представлений",
        "UILabel - отображение текста",
        "UIButton - кнопка, на которую можно нажимать",
        "UIImageView - отображение изображений",
        "UITextField - поле ввода текста",
        "UITextView - многострочное поле ввода текст",
        "UISwitch - переключатель (включить/выключить)",
        "UISlider - ползунок для выбора значения из диапазона",
        "UISegmentedControl - сегментированный контрол для выбора одного из нескольких вариантов",
        "UIActivityIndicatorView - индикатор активности (крутящийся круг)",
        "UIProgressView - индикатор прогресса",
        "UIStackView - стековое представление, позволяющее выстраивать подвиды по вертикали или горизонтали",
        "UICollectionView - представление для отображения коллекций элементов",
        "UITableView - представление для отображения данных в виде списка",
        "UIPickerView - выборка из нескольких возможных значений",
        "UIAlertController - контроллер для отображения предупреждений и действий",
        "UIScrollView - прокручиваемое представление, позволяющее отображать контент, который не вмещается в экран",
        "UIWebView / WKWebView - просмотр веб-контента",
        "UIViewController - базовый класс для всех контроллеров представления",
        "UITableViewController - контроллер для работы с таблицами",
        "UICollectionViewController - контроллер для работы с коллекциями",
        "UINavigationController - контроллер для создания стека навигации",
        "UITabBarController - контроллер для работы с вкладками",
        "UIPageViewController - контроллер для создания интерфейса пагинации",
        "UIAlertController - контроллер для отображения алертов и действий пользователя"
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .gray
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.text = nameCells[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let labelVC = LabelExampleViewController()
        labelVC.labelText = nameCells[indexPath.row]
        navigationController?.pushViewController(labelVC, animated: true)
    }
    
}
