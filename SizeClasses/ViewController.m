//
//  ViewController.m
//  SizeClasses
//
//  Created by Luciano Almeida on 30/10/14.
//  Copyright (c) 2014 Luciano Almeida. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "CollectionViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cars = @[@"AgeraOne.png",@"Agera2.png",@"GT500.png",@"VenonGt.png",@"Enzo.png",@"Mp4-4",@"SestoElemento.png"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.imageView.image = [UIImage imageNamed:[self.cars objectAtIndex:indexPath.row]];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cars.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:[self.cars objectAtIndex:indexPath.row]];
    return cell;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.cars.count;
}
@end
