//
//  UIScrollView.swift
//  Training
//
//  Created by Mac on 29.07.2024.
//

import UIKit

class UIScrollViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let screenWidth = UIScreen.main.bounds.width / 2 - 32
    let screenHeight = UIScreen.main.bounds.height / 3 - 48
    
    let mainStackView = UIStackView()
    
    let firstHorizStackView = UIStackView()
    let view1 = UIView()
    let view2 = UIView()
    
    let twoHorizStackView = UIStackView()
    let view3 = UIView()
    let view4 = UIView()
    
    let threeHorizStackView = UIStackView()
    let view5 = UIView()
    let view6 = UIView()
    
    let fourHorizStackView = UIStackView()
    let view7 = UIView()
    let view8 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        
        // Настройка contentView
              contentView.translatesAutoresizingMaskIntoConstraints = false
              scrollView.addSubview(contentView)
              
              // Установка ограничений для contentView
              NSLayoutConstraint.activate([
                  contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                  contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                  contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                  contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                  contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor) // Принуждаем width contentView
              ])
        
        // Настройка UIStackView
            mainStackView.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(mainStackView)
        
        
        mainStackView.axis = .vertical // Устанавливаем вертикальную ось
        mainStackView.alignment = .fill // Выравнивание элементов
        mainStackView.distribution = .fill // Распределение элементов
        mainStackView.spacing = 10 // Расстояние между элементами
        mainStackView.translatesAutoresizingMaskIntoConstraints = false // Используем Auto Layout
        
        // Добавляем StackView в основное View
//        view.addSubview(mainStackView)
        
        // Устанавливаем ограничения для StackView
        NSLayoutConstraint.activate([
                   mainStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1),
                   mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
                   mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
                   mainStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -1) // Устанавливаем связь с нижней частью contentView
               ])
        
        firstHorizStackView.axis = .horizontal
        firstHorizStackView.spacing = 10 // Расстояние между элементами
        
        twoHorizStackView.axis = .horizontal
        twoHorizStackView.spacing = 10
        
        threeHorizStackView.axis = .horizontal
        threeHorizStackView.spacing = 10
        
        fourHorizStackView.axis = .horizontal
        fourHorizStackView.spacing = 10
        
        mainStackView.addArrangedSubview(firstHorizStackView)
        mainStackView.addArrangedSubview(twoHorizStackView)
        mainStackView.addArrangedSubview(threeHorizStackView)
        mainStackView.addArrangedSubview(fourHorizStackView)
        
        setupView1()
        setupView2()
        setupView3()
        setupView4()
        setupView5()
        setupView6()
        setupView7()
        setupView8()
    
    }
    
    func setupView1() {
        view1.backgroundColor = .red
        view1.translatesAutoresizingMaskIntoConstraints = false
        firstHorizStackView.addArrangedSubview(view1)
        NSLayoutConstraint.activate([
            view1.widthAnchor.constraint(equalToConstant: screenWidth),
            view1.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView2() {
        view2.backgroundColor = .blue
        view2.translatesAutoresizingMaskIntoConstraints = false
        firstHorizStackView.addArrangedSubview(view2)
        NSLayoutConstraint.activate([
            view2.widthAnchor.constraint(equalToConstant: screenWidth),
            view2.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView3() {
        view3.backgroundColor = .green
        view3.translatesAutoresizingMaskIntoConstraints = false
        twoHorizStackView.addArrangedSubview(view3)
        NSLayoutConstraint.activate([
            view3.widthAnchor.constraint(equalToConstant: screenWidth),
            view3.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView4() {
        view4.backgroundColor = .black
        view4.translatesAutoresizingMaskIntoConstraints = false
        twoHorizStackView.addArrangedSubview(view4)
        NSLayoutConstraint.activate([
            view4.widthAnchor.constraint(equalToConstant: screenWidth),
            view4.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView5() {
        view5.backgroundColor = .systemPink
        view5.translatesAutoresizingMaskIntoConstraints = false
        threeHorizStackView.addArrangedSubview(view5)
        NSLayoutConstraint.activate([
            view5.widthAnchor.constraint(equalToConstant: screenWidth),
            view5.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView6() {
        view6.backgroundColor = .orange
        view6.translatesAutoresizingMaskIntoConstraints = false
        threeHorizStackView.addArrangedSubview(view6)
        NSLayoutConstraint.activate([
            view6.widthAnchor.constraint(equalToConstant: screenWidth),
            view6.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView7() {
        view7.backgroundColor = .gray
        view7.translatesAutoresizingMaskIntoConstraints = false
        fourHorizStackView.addArrangedSubview(view7)
        NSLayoutConstraint.activate([
            view7.widthAnchor.constraint(equalToConstant: screenWidth),
            view7.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
    
    func setupView8() {
        view8.backgroundColor = .purple
        view8.translatesAutoresizingMaskIntoConstraints = false
        fourHorizStackView.addArrangedSubview(view8)
        NSLayoutConstraint.activate([
            view8.widthAnchor.constraint(equalToConstant: screenWidth),
            view8.heightAnchor.constraint(equalToConstant: screenHeight)
        ])
    }
}
