//
//  GameViewController.swift
//  TaquinGame
//
//  Created by Lionel on 13/04/2019.
//  Copyright © 2019 Lionel. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var taquinCells: UICollectionView!
    var cellTab = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taquinCells.delegate = self
        taquinCells.dataSource = self
        // Do any additional setup after loading the view.
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellTab.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = taquinCells.dequeueReusableCell(withReuseIdentifier: "cel", for: indexPath) as! TaquinViewCell
        cell.num.text = String(cellTab[indexPath.item])
        
        return cell
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
