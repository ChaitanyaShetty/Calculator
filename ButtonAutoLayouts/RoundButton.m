//
//  RoundButton.m
//  ButtonAutoLayouts
//
//  Created by chaitanya on 12/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "RoundButton.h"

@implementation RoundButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib
{
    self.layer.cornerRadius = 15;
    self.clipsToBounds = YES;
}

@end
