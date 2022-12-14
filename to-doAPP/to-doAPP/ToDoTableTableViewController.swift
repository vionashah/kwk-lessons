//
//  ToDoTableTableViewController.swift
//  to-doAPP
//
//  Created by Scholar on 8/1/22.
//


import UIKit

class ToDoTableTableViewController: UITableViewController {
    func createToDo() -> [ToDoClass] {
        let swiftToDo = ToDoClass()
        swiftToDo.description = "Learn Swift"
        swiftToDo.important = true
        let dogToDo = ToDoClass()
        dogToDo.description = "Walk the dog"
        return [swiftToDo, dogToDo]
    }
    var listOfToDo : [ToDoClass] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfToDo = createToDo()
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let eachToDo = listOfToDo[indexPath.row]
        if eachToDo.important {
            cell.textLabel?.text = "!" + eachToDo.description
            cell.textLabel?.text = eachToDo.description
    } else {
        cell.textLabel?.text = eachToDo.description
    }

        return cell
    }
    

   

   


    


    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
