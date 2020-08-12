//
//  MySecondViewController.swift
//  ClientVK
//
//  Created by spector.rebop on 11.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit


class MySecondViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addGroup(_ sender: UIBarButtonItem) {
    }
    
    
    var myNewGroups: [NewGroup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        
    }
    
}

extension MySecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myNewGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsTableViewCellKey", for: indexPath) as! GroupsTableViewCell
        let group = myNewGroups[indexPath.row]
        
        cell.configure(for: group)
        
        return cell
    }
    
}

extension MySecondViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedGroup = myNewGroups[indexPath.row]
        
    }
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Если была нажата кнопка «Удалить»
        if editingStyle == .delete {
        // Удаляем город из массива
            myNewGroups.remove(at: indexPath.row)
        // И удаляем строку из таблицы
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        
        // Проверяем идентификатор, чтобы убедиться, что это нужный переход
        if segue.identifier == "addGroup" {
            // Получаем ссылку на контроллер, с которого осуществлен переход
            let MyNewGroupViewController = segue.source as! MyNewGroupViewController
            
            // Получаем индекс выделенной ячейки
            if let indexPath = MyNewGroupViewController.tableView.indexPathForSelectedRow {
                // Получаем группу по индексу
                let group = MyNewGroupViewController.myNewGroups[indexPath.row]
                // Добавляем группу в список выбранных групп
                myNewGroups.append(group)
                // Обновляем таблицу
                tableView.reloadData()
            }
        }
    }
    
    
    
    
}
