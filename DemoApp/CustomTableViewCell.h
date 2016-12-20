//
//  CustomTableViewCell.h
//  DFoodBuddy
//
//  Created by Apple on 17/05/16.
//  Copyright © 2016 cears. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DYRateView.h"

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UICollectionView *cellCollection;
@property (nonatomic, weak) IBOutlet UILabel *lblTitle, *lblSubTitle, *lblAddr, *lblTime, *lblCost, *lblDelivery;
@property (nonatomic, weak) IBOutlet UIImageView *imgCell, *imgSubCell;
@property (nonatomic, weak) IBOutlet DYRateView *rateView, *rateView1, *rateView2, *rateView3, *rateView4;
@property (nonatomic, weak) IBOutlet UIView *cellView;
@property (nonatomic) BOOL AddShadow;
@property (nonatomic, weak) IBOutlet UIButton *btnCell;

@end
