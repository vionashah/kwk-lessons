//
//  AddToDoViewController.swift
//  to-doAPP
//
//  Created by Scholar on 8/1/22.
//

import UIKit
var previousToDoTVC = ToDoTableTableViewController()





class AddToDoViewController: UIViewController {
    @IBOutlet weak var SwitchInput: UISwitch!
    @IBOutlet weak var DescriptionInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
@IBAction func addButtonTapped(_ sender: UIButton) {
    let newToDo = ToDoClass()
    if let checkForInput = DescriptionInput.text {
        newToDo.description = checkForInput
        newToDo.important = SwitchInput.isOn
    }
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
