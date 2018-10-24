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
    var switch1: SwitchButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Keyboards"
        registerCells()
        switch1 = SwitchButton()
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
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 2
        {
            return "Double taping the space bar will insert a period followed by a space."
        }
        else if (section == 3)
        {
            return "¡You can use your dictation in English wihout consuming data!"
        }
        else
        {
        return ""
        }
    }
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
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0 || section == 1
            {
        return 2
        }
        else if section == 2
            {
        return 8
        }
            else{
                return 1
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        
        if indexPath.section == 0 {
            let cell: KeyboardTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "keyboardCell1", for: indexPath) as? KeyboardTableViewCell)!
            cell.accessoryType = .disclosureIndicator
            
            switch (indexPath.row) {
            case 0:
               
                cell.lblLabel?.text = "Keyboards"
                cell.lblLabel2?.text = "3"
            case 1:
                cell.lblLabel?.text = "Hardware Keyboard"
                cell.lblLabel2?.text = ""
            default:
                cell.lblLabel?.text = ""
            }
           // cell.accessoryType = .detailDisclosureButton
            return cell
        }else if (indexPath.section == 1){
            let cell: KeyboardTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "keyboardCell1", for: indexPath) as? KeyboardTableViewCell)!
        
            switch (indexPath.row) {
            case 0:
                cell.lblLabel?.text = "Text Replacement"
                cell.lblLabel2?.text = ""
            case 1:
                cell.lblLabel?.text = "One Handed Keyboard"
                cell.lblLabel2?.text = "Off"
            default:
                cell.lblLabel?.text = ""
            }
            return cell
        } else if (indexPath.section == 2){
            let cell: Keyboard2TableViewCell = (tableView.dequeueReusableCell(withIdentifier: "keyboardCell2", for: indexPath) as? Keyboard2TableViewCell)!
            cell.delegate = self
            switch (indexPath.row) {
            case 0:
                cell.lblLabel?.text = "Auto-Capitalization"
                cell.btnSwitch.setOn(switch1.boolAuto, animated: false)
               
            case 1:
                cell.lblLabel?.text = "Auto-Correction"
                cell.btnSwitch.setOn(switch1.boolCorrecion, animated: false)
                
            case 2:
                cell.lblLabel?.text = "Check Spelling"
                cell.btnSwitch.setOn(switch1.boolSpelling, animated: false)
            
            
            case 3:
                cell.lblLabel?.text = "Enable Caps Lock"
                cell.btnSwitch.setOn(switch1.boolCaps, animated: false)
               
            case 4:
                cell.lblLabel?.text = "Predictive"
                cell.btnSwitch.setOn(switch1.boolPredictive, animated: false)
               
                
                
            case 5:
                cell.lblLabel?.text = "Smart Punctuation"
                cell.btnSwitch.setOn(switch1.boolPunctuaction, animated: false)
                
                
                
            case 6:
                cell.lblLabel?.text = "Character Preview"
                cell.btnSwitch.setOn(switch1.boolCharacter, animated: false)
                
                
                
            case 7:
                cell.lblLabel?.text = "\".\" Shorcut"
                cell.btnSwitch.setOn(switch1.boolShortup, animated: false)
                
                    
                
            default:
                cell.lblLabel?.text = ""
            }
            return cell
        } else
        {
            let cell: Keyboard2TableViewCell = (tableView.dequeueReusableCell(withIdentifier: "keyboardCell2", for: indexPath) as? Keyboard2TableViewCell)!
            cell.lblLabel?.text = "Enable Dictation"
            
            return cell
        }
        
       
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
    
}
extension KeyboardViewController: keyboard2SwitchDelegate
{
    func keyboard2SwitchDelegate(cell: Keyboard2TableViewCell, didChangevalue value: Bool)
    {
        let indexPath = tableView.indexPath(for: cell)
       
        switch indexPath?.row {
        case 0:
            switch1.boolAuto = cell.btnSwitch.isOn
            print(switch1.boolAuto)
        case 1:
            switch1.boolCorrecion = cell.btnSwitch.isOn
            print(switch1.boolCorrecion)
        case 2:
            switch1.boolSpelling = cell.btnSwitch.isOn
            print(switch1.boolSpelling)
        case 3:
            switch1.boolCaps = cell.btnSwitch.isOn
            print(switch1.boolCaps)
        case 4:
            switch1.boolPredictive = cell.btnSwitch.isOn
            print(switch1.boolPredictive)
        case 5:
            switch1.boolPunctuaction = cell.btnSwitch.isOn
            print(switch1.boolPunctuaction)
        case 6:
            switch1.boolCharacter = cell.btnSwitch.isOn
            print(switch1.boolAuto)
        case 7:
            switch1.boolShortup = cell.btnSwitch.isOn
            print(switch1.boolShortup)
        default: break
        
        }
    }
}
