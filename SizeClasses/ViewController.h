//
//  ViewController.h
//  SizeClasses
//
//  Created by Luciano Almeida on 30/10/14.
//  Copyright (c) 2014 Luciano Almeida. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic) NSArray * cars;

@end

