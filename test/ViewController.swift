//
//  ViewController.swift
//  test
//
//  Created by dit-user on 2024/04/01.
//

import UIKit
import MapKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {



    @IBOutlet weak var mapview: MKMapView!
    @IBOutlet weak var table: UITableView!

    let fruits = ["apple", "orange", "melon", "banana", "pineapple","test","test2"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath)

        // セルに表示する値を設定する
        cell.textLabel!.text = fruits[indexPath.row]

        return cell
    }
}

