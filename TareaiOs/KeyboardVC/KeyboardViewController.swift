//
//  KeyboardViewController.swift
//  TareaiOs
//
//  Created by JOAQUIN DIAZ RAMIREZ on 17/10/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit
enum SectionsType {
    case generalInfo  //value 0
    case options
    case moreInfo
}

class KeyboardViewController: UIViewController {
    internal var sections: [SectionsType] = [.generalInfo, .options, .moreInfo]
    
    @IBOutlet weak var tableView : UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Keyboards"
        registerCells()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func registerCells ()
    {
        let indentifier = "KeyboardTableViewCell"
        let cellNib = UINib(nibName: indentifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "keyboardCell1")
        let indentifier1 = "Keyboard2TableViewCell"
        let cellNib1 = UINib(nibName: indentifier1, bundle: nil)
        tableView.register(cellNib1, forCellReuseIdentifier: "keyboardCell2")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension KeyboardViewController: UITableViewDelegate,UITableViewDataSource
    
{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 || section == 1
        {
            return nil
        }
        else
        {
            return "ALL KEYBOARDS"
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0 || section == 1
            {
        return 2
        }
        else
            {
        return 8
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 || indexPath.section == 1 {
            let cell: KeyboardTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "keyboardCell1", for: indexPath) as? KeyboardTableViewCell)!
            cell.accessoryType = .disclosureIndicator
            return cell
        }else{
            let cell: Keyboard2TableViewCell = (tableView.dequeueReusableCell(withIdentifier: "keyboardCell2", for: indexPath) as? Keyboard2TableViewCell)!
            return cell
        }
        
       
    }
    
    
    
}
