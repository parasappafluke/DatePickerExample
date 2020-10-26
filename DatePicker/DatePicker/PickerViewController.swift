//
//  PickerViewController.swift
//  DatePicker
//
//  Created by Parasappa  on 10/23/20.
//

import UIKit

class PickerViewController: UIViewController {

	@IBOutlet var datePicker: UIDatePicker!
	var preferredPickerStyle:UIDatePickerStyle = .inline
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		self.datePicker.preferredDatePickerStyle = self.preferredPickerStyle
		self.title  = displayName(for: self.preferredPickerStyle)
    }
    
	func displayName(for pickerStyle:UIDatePickerStyle) -> String {
		switch pickerStyle {
		case .automatic:
			return "Automatic"
		case .compact:
			return "Compact"
		case .inline:
			return "Inline"
		default:
			return "Wheel"
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
