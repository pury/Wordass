//
//  ViewController.swift
//  Wordass
//
//  Created by pury on 3/7/17.
//  Copyright © 2017 pury. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var words = ["me", "english", "fast", "number"];
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        tableView.reloadData();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if segue.identifier == "showDetail"
        {
            let destination: DetailViewController =
                segue.destination as! DetailViewController;
            
            if sender is Int
            {
                let word = self.words[sender as! Int];
                destination.word = word;
            }
        }
        else if segue.identifier == "addWord"{
            //let destination: DetailViewController =
           //     segue.destination as! DetailViewController;
            //destination.delegate = self;
        }

    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath);
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "Cell");
        // Configure the cell...
        cell.textLabel?.text = self.words[indexPath.row];
        //cell.detailTextLabel?.text = "待添加内容";
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        performSegue(withIdentifier: "showDetail", sender: indexPath.row);
    }
    
}

