//
//  PhotoController.h
//  Photo Bombers
//
//  Created by Dean Laurea on 9/9/15.
//  Copyright (c) 2015 Dean Laurea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PhotoController : NSObject

+ (void)imageForPhoto:(NSDictionary *)photo size:(NSString *)size completion:(void(^)(UIImage *image))completion;

@end
