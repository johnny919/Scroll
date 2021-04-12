//
//  ViewController.swift
//  Scroll
//
//  Created by LIU SHANG WEI on 2021/4/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changePage(_ sender: UIPageControl) {
        let point = CGPoint(x: scrollView.bounds.width * CGFloat(sender.currentPage), y: 0)
        scrollView.setContentOffset(point, animated: true)
    }
}
extension ViewController: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.bounds.width
        pageControl.currentPage = Int(page)
    }
}
