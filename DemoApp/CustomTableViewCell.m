//
//  CustomTableViewCell.m
//  DFoodBuddy
//
//  Created by Apple on 17/05/16.
//  Copyright © 2016 cears. All rights reserved.
//

#import "CustomTableViewCell.h"

#import "GlobalClass.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)layoutSubviews {
    
    if (self.AddShadow) {

        self.cellView.layer.cornerRadius = 2.0f;
        self.cellView.layer.borderWidth = 1.0f;
        self.cellView.layer.borderColor = [UIColor clearColor].CGColor;
        self.cellView.layer.masksToBounds = YES;
         
        self.cellView.layer.shadowColor = [UIColor colorWithRed:170/255.0f green:170/255.0f blue:170/255.0f alpha:1.0].CGColor;
        self.cellView.layer.shadowOffset = CGSizeMake(0, 1.0f);
        self.cellView.layer.shadowRadius = 2.0f;
        self.cellView.layer.shadowOpacity = 1.0f;
        self.cellView.layer.masksToBounds = NO;
        CGRect rect1 = CGRectMake(self.cellView.bounds.origin.x, self.cellView.bounds.origin.y, SCREEN_WIDTH - 10, self.cellView.bounds.size.height);
        self.cellView.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:rect1 cornerRadius:2.0f].CGPath;
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
