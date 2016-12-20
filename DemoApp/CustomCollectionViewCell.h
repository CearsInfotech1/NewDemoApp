//
//  CustomCollectionViewCell.h
//  DFoodBuddy
//
//  Created by Apple on 17/05/16.
//  Copyright © 2016 cears. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DYRateView.h"

@interface CustomCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UIImageView *imgCell, *imgSubCell;
@property (nonatomic, weak) IBOutlet UILabel *lblTitle, *lblSubTitle, *lblPrice, *lblAddr;
@property (nonatomic, weak) IBOutlet UIButton *btnCell, *btnLike;
@property (nonatomic, weak) IBOutlet DYRateView *rateView;

@end
