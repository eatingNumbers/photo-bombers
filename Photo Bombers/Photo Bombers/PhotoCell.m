//
//  PhotoCell.m
//  Photo Bombers
//
//  Created by Dean Laurea on 9/2/15.
//  Copyright (c) 2015 Dean Laurea. All rights reserved.
//

#import "PhotoCell.h"

@implementation PhotoCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView = [[UIImageView alloc] init];
        self.imageView.image = [UIImage imageNamed:@"Treehouse"];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

- (void)layoutSubviews {
    self.imageView.frame = self.contentView.bounds;
}

@end
