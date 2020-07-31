//
//  LoginFormController.swift
//  curse2_lesson1
//
//  Created by spector.rebop on 29.07.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class LoginFormController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    
    @IBOutlet weak var myLogin: UITextField!
    @IBOutlet weak var myPassword: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBAction func myButton(_ sender: Any) {
        let login = myLogin.text!
               // Получаем текст-пароль
               let password = myPassword.text!
               
               // Проверяем, верны ли они
               if login == "admin" && password == "123456" {
                   print("успешная авторизация")
               } else {
                   print("неуспешная авторизация")
               }
    }
    // Когда клавиатура появляется
      @objc func keyboardWasShown(notification: Notification) {
          
          // Получаем размер клавиатуры
          let info = notification.userInfo! as NSDictionary
          let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
          let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
          
          // Добавляем отступ внизу UIScrollView, равный размеру клавиатуры
          self.scrollView?.contentInset = contentInsets
          scrollView?.scrollIndicatorInsets = contentInsets
      }
      
      //Когда клавиатура исчезает
      @objc func keyboardWillBeHidden(notification: Notification) {
          // Устанавливаем отступ внизу UIScrollView, равный 0
          let contentInsets = UIEdgeInsets.zero
          scrollView?.contentInset = contentInsets
      }
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         
         // Подписываемся на два уведомления: одно приходит при появлении клавиатуры
         NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
         // Второе — когда она пропадает
         NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
     }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
     
  

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
