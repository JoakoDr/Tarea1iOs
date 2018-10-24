//
//  OpcionesViewController.swift
//  TareaiOs
//
//  Created by JOAQUIN DIAZ RAMIREZ on 24/10/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit

class OpcionesViewController: UIViewController {
    internal var opciones1 : [Opcion1] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
extension OpcionesViewController: UITableViewDelegate,UITableViewDataSource
    
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if opciones1.count>=1 {
            return opciones1.count
        }
        return 1
        
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return (opciones1.count>0)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if opciones1.count>=1 {
            return 55.0
        }
        return 130.5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
            let actor = opciones1[indexPath.row]
            let cell: OpcionesViewController = (tableView.dequeueReusableCell(withIdentifier: "optionsCell", for: indexPath) as? OpcionesViewController)!
            
        
            
            //return cell
            
        }
        
        
    }
    
    


