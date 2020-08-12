//
//  MyNewGroupViewController.swift
//  ClientVK
//
//  Created by spector.rebop on 11.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class MyNewGroupViewController: UIViewController {
     


   
    @IBOutlet weak var tableView: UITableView!
    
    
    
 
    
           var myNewGroups: [NewGroup] = []
             
             override func viewDidLoad() {
                 super.viewDidLoad()

                 // Do any additional setup after loading the view.
                 tableView.tableFooterView = UIView()
                 tableView.delegate = self
                 
                 generateNewGroups()
                
             }
             
             private func generateNewGroups() {
                 let newGroup1 = NewGroup(groupsName: "Group4", imageGroup: "image7")
                 let newGroup2 = NewGroup(groupsName: "Group5", imageGroup: "image8")
                 let newGroup3 = NewGroup(groupsName: "Group6", imageGroup: "image9")
                 myNewGroups.append(newGroup1)
                 myNewGroups.append(newGroup2)
                 myNewGroups.append(newGroup3)
                 myNewGroups.append(newGroup1)
                 myNewGroups.append(newGroup2)
                 myNewGroups.append(newGroup3)
                 
                 tableView.reloadData()
                 
             }

         }

         extension MyNewGroupViewController: UITableViewDataSource {
            
             func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                 return myNewGroups.count
             }
             
             func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                 let cell = tableView.dequeueReusableCell(withIdentifier: "NewGroupsTableViewCellKey", for: indexPath) as! NewGroupsTableViewCell
                 let newgroup = myNewGroups[indexPath.row]
                 
                 cell.configure(for: newgroup)

                 return cell
             }
             
         }

         extension MyNewGroupViewController: UITableViewDelegate {
             
             func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                 let selectedNewGroup = myNewGroups[indexPath.row]
                 
               
             }
         }
   
