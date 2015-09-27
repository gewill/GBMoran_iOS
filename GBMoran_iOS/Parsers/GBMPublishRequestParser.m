//
//  GBMPublishRequestParser.m
//  GBMoran_iOS
//
//  Created by 陈铭嘉 on 15/9/23.
//  Copyright © 2015年 Brave. All rights reserved.
//

#import "GBMPublishRequestParser.h"

@implementation GBMPublishRequestParser


- (GBMPublishModel*)parseJson:(NSData *)data
{
    NSError *error = nil;
    id jsonDic = [NSJSONSerialization JSONObjectWithData:data
                                                 options:NSJSONReadingAllowFragments
                                                   error:&error];
    if (error) {
        NSLog(@"The parser is not work.");
    } else {
        if ([[jsonDic class] isSubclassOfClass:[NSDictionary class]]) {
            id returnMessage = [jsonDic valueForKey:@"data"];
            if ([[returnMessage class] isSubclassOfClass:[NSString class]]) {
                GBMPublishModel *user = [[GBMPublishModel alloc] init];
                user.picId = [NSMutableArray array];
                [user.picId addObject:returnMessage];
                return user;
            }
        }
    }
    return nil;
}

@end
