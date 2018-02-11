//
//  UITableView+JYAdd.swift
//  JYKit
//
//  Created by LongFu on 2017/12/24.
//  Copyright © 2017年 onelcat. All rights reserved.
//

import UIKit

public extension UITableView {
    
    func update(block: (_ tableView: UITableView)->()) {
        self.beginUpdates()
        block(self)
        self.endUpdates()
    }
    
    func scroll(row: Int, section: Int, scrollPosition: UITableViewScrollPosition, animated: Bool) {
        let indexPath = IndexPath(row: row, section: section)
        self.scrollToRow(at: indexPath, at: scrollPosition, animated: animated)
    }
    
    func insert(indexPath: IndexPath,animation: UITableViewRowAnimation) {
        self.insertRows(at: [indexPath], with: animation)
    }
    
    func insert(row: Int, section: Int, animation: UITableViewRowAnimation) {
        let toInsert =  IndexPath(row: row, section: section)
        self.insert(indexPath: toInsert, animation: animation)
    }
    
    func insert(section: Int, animation: UITableViewRowAnimation) {
        let sections = IndexSet.init(integer: section)
        self.insertSections(sections, with: animation)
    }
    
    func reload(indexPath: IndexPath, animation: UITableViewRowAnimation) {
        self.reloadRows(at: [indexPath], with: animation)
    }
    
    func reload(row: Int, section: Int, animation: UITableViewRowAnimation) {
        let toReload = IndexPath(row: row, section: section)
        self.reload(indexPath: toReload, animation: animation)
    }
    
    func reload(section: Int, animation: UITableViewRowAnimation) {
        let sections = IndexSet.init(integer: section)
        self.reloadSections(sections, with: animation)
    }
    
    func delete(indexPath: IndexPath, animation: UITableViewRowAnimation) {
        self.deleteRows(at: [indexPath], with: animation)
    }
    
    func delete(row: Int, section: Int, animation: UITableViewRowAnimation) {
        let toDelete = IndexPath(row: row, section: section)
        self.delete(indexPath: toDelete, animation: animation)
    }
    
    func delete(section: Int, animation: UITableViewRowAnimation) {
        let sections = IndexSet.init(integer: section)
        self.deleteSections(sections, with: animation)
    }
    
    func clearSelectedRowsAnimated(animated: Bool) {
        let indexs = self.indexPathsForSelectedRows! as NSArray
        indexs.enumerateObjects({ (path, idx, stop) in
            self.deselectRow(at: path as! IndexPath, animated: animated)
        })
    }
}
