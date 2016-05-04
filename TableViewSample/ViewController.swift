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
		cell.textLabel?.text = provinces[indexPath.row]
		return cell;
	}
	
}

