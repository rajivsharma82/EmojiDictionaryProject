//
//  EmojiTableViewController.swift
//  EmojiDictionaryProject
//
//  Created by rajeev on 3/30/19.
//  Copyright © 2019 rajeev. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = [
        Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiling face", usage: "happiness"),
        Emoji(symbol: "😕", name: "Confused Face", description: "A confused puzzled face", usage: "Unsure what to think, displeasure"),
        Emoji(symbol: "🥰", name: "Loved face", description: "Loving smily", usage: "Feeling loved"),
        
        Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiling face with heart for eyes", usage: "Love of something attractive"),
        Emoji(symbol: "👮‍♀️", name: "POLICE inspector", description: "A police officer wearing a blue cap", usage: "Person of authority"),
        Emoji(symbol: "🐘", name: "Elephant", description: "Animal", usage: "Good Memory"),
        Emoji(symbol: "🐒", name: "Monkey", description: "Naughty Animal", usage: "Active"),
        Emoji(symbol: "🐶", name: "Puppy", description: "A dog face with one closed eye", usage: "Loving Dog"),
        Emoji(symbol: "🤠", name: "Clown with Hat", description: "Funny Show", usage: "Fun Show"),
        Emoji(symbol: "👨‍👩‍👧‍👧", name: "Family Pic", description: "2 kids with parents", usage: "A Happy Family"),
        Emoji(symbol: "💔", name: "Broken Heart", description: "Sad Person", usage: "Sad Phase"),
        
        Emoji(symbol: "🥳", name: "Happy Person", description: "Birthday Party", usage: "Happy Phase"),
        Emoji(symbol: "😎", name: "Person with specs", description: "Specs", usage: "Happy Phase"),
        
        Emoji(symbol: "🧑🏻", name: "Boy", description: "Boy", usage: "Happy Boy"),
        
        Emoji(symbol: "👩🏻", name: "Girl", description: "Birthday Party", usage: "Girl"),
        
        Emoji(symbol: "🧒", name: "Happy Person", description: "Birthday Party", usage: "Happy Phase"),
        
        Emoji(symbol: "⛸", name: "Happy Person", description: "Birthday Party", usage: "Happy Phase"),
        
        Emoji(symbol: "⚽️", name: "Happy Person", description: "Birthday Party", usage: "Happy Phase"),
        
        Emoji(symbol: "🎾", name: "Happy Person", description: "Birthday Party", usage: "Happy Phase"),
        Emoji(symbol: "🥊", name: "Happy Person", description: "Birthday Party", usage: "Happy Phase")
        
    ]
    
    @IBAction func editButton(_ sender: UIBarButtonItem) {
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // navigationItem.setLeftBarButtonItem = editButtonItem
        
        
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return emojis.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmojiCell", for: indexPath)

        // Configure the cell...
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.symbol)    \(emoji.name)"
        cell.detailTextLabel?.text = emoji.description

        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        print("\(emoji.symbol)    \(indexPath)")
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let movedEmoji = emojis.remove(at: fromIndexPath.row)
        emojis.insert(movedEmoji, at: to.row)
        
        tableView.reloadData()
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
