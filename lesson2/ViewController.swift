//
//  ViewController.swift
//  lesson2
//
//  Created by Dmitrii Nazarov on 20.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var viewWidth = view.frame.size.width
    lazy var viewHeight = view.frame.size.height
    
    
    // MARK: UI
    lazy var headerImage: UIImageView = {
        $0.image = UIImage(named: "img1")
        $0.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: viewWidth, height: viewHeight/5)
        
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        
        return $0
    }(UIImageView())
    
    lazy var profileImage: UIImageView = {
        $0.image = .img2
        $0.frame = CGRect(x: headerImage.frame.minX+viewWidth/16, y: headerImage.frame.maxY+viewHeight/30, width: viewHeight/8, height: viewHeight/8)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = $0.frame.width/2
    
        return $0
    }(UIImageView())
    

    
    lazy var namesurnameLabel: UILabel = {
        $0.text = "Имя Фамилия"
        $0.frame = CGRect(x: profileImage.frame.maxX + 20, y: profileImage.frame.minY+viewHeight/70, width: 150, height: 30)
        $0.font = .systemFont(ofSize: 18, weight: .bold)
    
        return $0
    }(UILabel())
    
    lazy var changeButton: UIButton = {
        $0.setTitle("редактировать", for: .normal)
        $0.frame = CGRect(x: namesurnameLabel.frame.minX, y: namesurnameLabel.frame.maxY+7, width: viewWidth/2.5, height: viewHeight/25)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 12
        $0.backgroundColor = .systemBlue

        return $0
    }(UIButton())
    
    lazy var descriptionLabel: UILabel = {
        $0.text = "Добавить описание"
        $0.frame = CGRect(x: profileImage.frame.minX, y: profileImage.frame.maxY+viewHeight/40, width: viewWidth/2, height: viewHeight/40)
        
        
        return $0
    }(UILabel())
    
    lazy var descr: UITextView = {
        $0.frame = CGRect(x: descriptionLabel.frame.minX, y: descriptionLabel.frame.maxY+viewHeight/100, width: viewWidth - 46, height: viewHeight/5)
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
        $0.backgroundColor = .placeholderText
        return $0
        
        
        
        
        
    }(UITextView())
    
    lazy var passwordLabel: UILabel = {
        $0.text = "Изменить пароль"
        $0.frame = CGRect(x: descr.frame.minX, y: descr.frame.maxY+viewHeight/20, width: viewWidth/2, height: viewHeight/40)
        
        
        
        return $0
    }(UILabel())
    
    lazy var oldPasswordField: UITextField = {
        $0.frame = CGRect(x: passwordLabel.frame.minX, y: passwordLabel.frame.maxY + viewHeight/200, width: viewWidth-46, height: viewHeight/17)
        $0.placeholder = "старый пароль"
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.backgroundColor = .placeholderText
        
        
        
        
        return $0
    }(UITextField())
    
    lazy var newPassowordField: UITextField = {
        $0.frame = CGRect(x: passwordLabel.frame.minX, y: oldPasswordField.frame.maxY + 5 + viewHeight/200, width: viewWidth-46, height: viewHeight/17)
        $0.placeholder = "новый пароль"
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        $0.backgroundColor = .placeholderText
        
        return $0
    }(UITextField())
    
    lazy var saveBtn: UIButton = {
        $0.setTitle("Сохранить", for: .normal)
        $0.frame = CGRect(x: passwordLabel.frame.minX, y: viewHeight/1.1, width: viewWidth - 46, height: viewHeight/16 )
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 12
        $0.backgroundColor = .systemBlue
        
        
       
        return $0
    }(UIButton())
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
         addSubviews()
    }

}

extension ViewController {
    // MARK: Private methods
    private func addSubviews() {
        view.addSubview(headerImage)
        view.addSubview(profileImage)
        view.addSubview(descriptionLabel)
        view.addSubview(namesurnameLabel)
        view.addSubview(changeButton)
        view.addSubview(descr)
        view.addSubview(passwordLabel)
        view.addSubview(oldPasswordField)
        view.addSubview(newPassowordField)
        view.addSubview(saveBtn)
        
        
    }
    
}
