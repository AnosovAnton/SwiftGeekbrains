//
//  MyFirstViewController.swift
//  ClientVK
//
//  Created by spector.rebop on 08.08.2020.
//  Copyright © 2020 spector.rebop. All rights reserved.
//

import UIKit

class MyFirstViewController: UIViewController {
    
   
   
   
    @IBOutlet weak var tableView: UITableView!
    
    

      var myFriends: [Friend] = []
            
            override func viewDidLoad() {
                super.viewDidLoad()

                // Do any additional setup after loading the view.
                tableView.tableFooterView = UIView()
                tableView.delegate = self
                
                generateFriends()
               
            }
            
            private func generateFriends() {
                let friend1 = Friend(name: "Anton", age: 34, imageName: "image1")
                let friend2 = Friend(name: "Eugene", age: 35, imageName: "image2")
                let friend3 = Friend(name: "Kate", age: 18, imageName: "image3")
                myFriends.append(friend1)
                myFriends.append(friend2)
                myFriends.append(friend3)
                myFriends.append(friend1)
                myFriends.append(friend2)
                myFriends.append(friend3)
                myFriends.append(friend1)
                myFriends.append(friend2)
                myFriends.append(friend3)
                myFriends.append(friend1)
                myFriends.append(friend2)
                myFriends.append(friend3)
                myFriends.append(friend1)
                myFriends.append(friend2)
                myFriends.append(friend3)
                myFriends.append(friend1)
                myFriends.append(friend2)
                myFriends.append(friend3)
                
                tableView.reloadData()
                //   myFriends.a
            }

        }

        extension MyFirstViewController: UITableViewDataSource {
           
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return myFriends.count
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "MyFirstCellKey", for: indexPath) as! FriendsTableViewCell
                let friend = myFriends[indexPath.row]
                
                cell.configure(for: friend)

                return cell
            }
            
        }

        extension MyFirstViewController: UITableViewDelegate {
            
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                let selectedFriend = myFriends[indexPath.row]
                
                let vc = storyboard?.instantiateViewController(identifier: "MyCollectionViewControllerKey") as! MyCollectionViewController
                vc.selectedModel = selectedFriend
                self.show(vc, sender: nil)
                print(indexPath.row)
            }
        }
