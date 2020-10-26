//
//  ViewController.swift
//  DatePicker
//
//  Created by Parasappa  on 10/23/20.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	var selectIndexPath:IndexPath?
	let list:[String] =  ["Automatic", "Wheel","Compact","Inline"]
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		self.tableView.delegate = self;
		self.selectIndexPath = IndexPath.init(index:1)
	}


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return list.count;
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
		cell.textLabel?.text = list[indexPath.row]
		cell.accessoryType = .disclosureIndicator
		return cell;
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
//		let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
		let destinationVC:PickerViewController = storyboard?.instantiateViewController(identifier: "PickerViewController") as! PickerViewController;
		destinationVC.preferredPickerStyle = pickerStyle(for:indexPath)
		
		self.navigationController?.show(destinationVC, sender: self)
	}
	func pickerStyle(for indexPath:IndexPath) -> UIDatePickerStyle {
		
		return UIDatePickerStyle(rawValue: indexPath.row)!
	}
}

