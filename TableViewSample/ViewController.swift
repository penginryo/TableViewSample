//
//  ViewController.swift
//  TableViewSample
//
//  Created by Ryo Makabe on 2016-05-03.
//  Copyright © 2016 penginryo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	@IBOutlet weak var tableView: UITableView!
	
	private let provinces: [String] = ["Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]
	private let capitalCities: [String] = ["Edmonton", "Victoria", "Winnipeg", "Fredericton", "St. John's", "Halifax", "Toronto", "Charlottetown", "Quebec", "Regina"]
	
	private let capital: String = "Capital City : "
	
	
	
	
	private let identifier: String = "CanadianProvinces"

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return provinces.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)
		let province = tableView.viewWithTag(1) as! UILabel
		let capitalLabel = tableView.viewWithTag(2) as! UILabel
		let capitalCity = tableView.viewWithTag(3) as! UILabel
		
		province.text = provinces[indexPath.row]
		capitalCity.text = capitalCities[indexPath.row]
		capitalLabel.text = capital
		
		return cell;
	}
	
}

