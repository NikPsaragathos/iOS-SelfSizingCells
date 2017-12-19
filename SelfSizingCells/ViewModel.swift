//
//  ViewModel.swift
//  SelfSizingCells
//
//  Created by Arvindh Sukumar on 02/01/16.
//  Copyright © 2016 Arvindh Sukumar. All rights reserved.
//

import UIKit

class ViewModel: NSObject,UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {

    var quotes:[Quote] = []
    
    override init() {
        super.init()
        self.loadQuotes()
    }
    
    private func loadQuotes(){
        quotes = []
        if let path = Bundle.main.path(forResource: "quotes", ofType: "plist"),let quotesArray = NSArray(contentsOfFile: path){
            
            for dictionary in quotesArray {
                let dictionary = dictionary as! NSDictionary 
                let text = dictionary.value(forKey: "text") as? String ?? ""
                let imageName = dictionary.value(forKey: "imageName") as? String
                let personName = dictionary.value(forKey: "person") as? String
                
                let quote = Quote(text: text, imageName: imageName, personName: personName)
                quotes.append(quote)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellIdentifier, for: indexPath as IndexPath) as! TableViewCell
        
        let quote = quotes[indexPath.row]
        cell.quoteTextLabel.text = quote.text
        cell.nameLabel.text = quote.personName
        
        if let imageName = quote.imageName, !imageName.isEmpty{
            cell.photoView?.image = UIImage(named: imageName)
            cell.photoWidthConstraint.constant = kDefaultPhotoWidth
            cell.photoRightMarginConstraint.constant = kDefaultPhotoRightMargin
        }
        else {
            cell.photoView?.image = nil
            cell.photoWidthConstraint.constant = 0
            cell.photoRightMarginConstraint.constant = 0
        }
        
        cell.contentView.setNeedsLayout()
        cell.contentView.layoutIfNeeded()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewCellIdentifier, for: indexPath) as! CollectionViewCell
        
        return cell
    }
    
    
}
