//
//  UIViewElement.swift
//  Training
//
//  Created by Mac on 25.07.2024.
//

import UIKit

class UIViewElement: UIViewController {
    
    let view1 = UIView()
    let view2 = UIView()
    let view3 = UIView()
    let view4 = UIView()
    let view5 = UIView()
    let view6 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView1()
        setupView2()
        setupView3()
        setupView4()
        setupView5()
        setupView6()
        
        view.backgroundColor = .white
    }
    
    func setupView1() {
        view1.backgroundColor = .red
        view1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(view1)
        let screenWidth = UIScreen.main.bounds.width / 2 - 32
        let screenHeight = UIScreen.main.bounds.height / 3 - 48
        NSLayoutConstraint.activate([
            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            view1.widthAnchor.constraint(equalToConstant: screenWidth),
            view1.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView2() {
        view2.backgroundColor = .blue
        view2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(view2)
        let screenWidth = UIScreen.main.bounds.width / 2 - 32
        let screenHeight = UIScreen.main.bounds.height / 3 - 48
        NSLayoutConstraint.activate([
            view2.leadingAnchor.constraint(equalTo: view1.trailingAnchor, constant: 16),
            view2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            view2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            view2.widthAnchor.constraint(equalToConstant: screenWidth),
            view2.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView3() {
        view3.backgroundColor = .green
        view3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(view3)
        let screenWidth = UIScreen.main.bounds.width / 2 - 32
        let screenHeight = UIScreen.main.bounds.height / 3 - 48
        NSLayoutConstraint.activate([
            view3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view3.topAnchor.constraint(equalTo: view1.bottomAnchor,constant: 16),
            view3.widthAnchor.constraint(equalToConstant: screenWidth ),
            view3.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView4() {
        view4.backgroundColor = .black
        view4.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(view4)
        let screenWidth = UIScreen.main.bounds.width / 2 - 32
        let screenHeight = UIScreen.main.bounds.height / 3 - 48
        NSLayoutConstraint.activate([
            view4.leadingAnchor.constraint(equalTo: view3.trailingAnchor, constant: 16),
            view4.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 16),
            view4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            view4.widthAnchor.constraint(equalToConstant: screenWidth),
            view4.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView5() {
        view5.backgroundColor = .systemPink
        view5.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(view5)
        let screenWidth = UIScreen.main.bounds.width / 2 - 32
        let screenHeight = UIScreen.main.bounds.height / 3 - 48
        NSLayoutConstraint.activate([
            view5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view5.topAnchor.constraint(equalTo: view3.bottomAnchor, constant: 16),
            view5.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 16),
            view5.widthAnchor.constraint(equalToConstant: screenWidth),
            view5.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView6() {
        view6.backgroundColor = .orange
        view6.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(view6)
        let screenWidth = UIScreen.main.bounds.width / 2 - 32
        let screenHeight = UIScreen.main.bounds.height / 3 - 48
        NSLayoutConstraint.activate([
            view6.leadingAnchor.constraint(equalTo: view5.trailingAnchor, constant: 16),
            view6.topAnchor.constraint(equalTo: view4.bottomAnchor, constant: 16),
            view6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            view6.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 16),
            view6.widthAnchor.constraint(equalToConstant: screenWidth),
            view6.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
}



    
//    private func setupColorBoxes() {
//        let colors: [UIColor] = [.red, .blue, .green, .black, .systemPink, .orange]
//        let numberOfRows = 3
//        let numberOfColumns = 2
//        
//        let spacing: CGFloat = 5 // Уменьшенные промежутки между элементами
//        let inset: CGFloat = 10   // Отступы от безопасной зоны
//        
//        // Изменяем размеры прямоугольников
//        let boxWidth: CGFloat = (view.safeAreaLayoutGuide.layoutFrame.width - (spacing * CGFloat(numberOfColumns - 1) + inset * 2)) / CGFloat(numberOfColumns)
//        let boxHeight: CGFloat = (view.safeAreaLayoutGuide.layoutFrame.height - (spacing * CGFloat(numberOfRows - 1) + inset * 2)) / CGFloat(numberOfRows)
//        
//        for row in 0..<numberOfRows {
//            for column in 0..<numberOfColumns {
//                let colorBox = UIView()
//                colorBox.backgroundColor = colors[row * numberOfColumns + column]
//                
//                colorBox.translatesAutoresizingMaskIntoConstraints = false
//                view.addSubview(colorBox)
//                
//                // Позиционирование с учетом Safe Area и отступов
//                NSLayoutConstraint.activate([
//                    colorBox.widthAnchor.constraint(equalToConstant: boxWidth),
//                    colorBox.heightAnchor.constraint(equalToConstant: boxHeight),
//                    colorBox.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: inset + CGFloat(column) * (boxWidth + spacing)),
//                    colorBox.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: inset + CGFloat(row) * (boxHeight + spacing))
//                ])
//            }
//        }
//    }




