//
//  Logo.m
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#import <Foundation/Foundation.h>
#import "Logo.h"

@implementation Logo

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"Logo" owner: self
                                     options:nil];
        
        [self addSubview:self.view];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    self = [super initWithCoder:coder];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"Logo" owner: self
                                     options:nil];
        [self addSubview:self.view];
    }
    return self;
}






@end
