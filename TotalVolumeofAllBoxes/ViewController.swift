//
//  ViewController.swift
//  TotalVolumeofAllBoxes
//
//  Created by Daniel Washington Ignacio on 28/05/21.
//


/*
 Given an array of boxes, create a function that returns the total volume of all those boxes combined together. A box is represented by an array with three elements: length, width and height.

 For instance, totalVolume([2, 3, 2], [6, 6, 7], [1, 2, 1]) should return 266 since (2 x 3 x 2) + (6 x 6 x 7) + (1 x 2 x 1) = 12 + 252 + 2 = 266.

 Examples

 totalVolume([4, 2, 4], [3, 3, 3], [1, 1, 2], [2, 1, 1]) ➞ 63

 totalVolume([2, 2, 2], [2, 1, 1]) ➞ 10

 totalVolume([1, 1, 1]) ➞ 1
 Notes

 You will be given at least one box.
 Each box will always have three dimensions included.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.totalVolume([4, 2, 4], [3, 3, 3], [1, 1, 2], [2, 1, 1]))
        print(self.totalVolume([2, 2, 2], [2, 1, 1]))
        print(self.totalVolume([1, 1, 1]))
    }

    func totalVolume(_ boxes: [Int]...) -> Int {
        var sum: Int = 1
        var totalSum: Int = 0
        for n in boxes{
            for m in n{
                sum = sum * m
            }
            totalSum = sum + totalSum
            sum = 1
        }
        return  totalSum
    }
    
    
}

