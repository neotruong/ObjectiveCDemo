//
//  HeaderLabel.m
//  SellPetObjectC
//
//  Created by Neo Truong on 3/12/21.
//

#import "HeaderLabel.h"
#import <Foundation/Foundation.h>

@implementation HeaderLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       
        [[NSBundle mainBundle] loadNibNamed:@"HeaderLabel" owner: self
                                     options:nil];
        [self addSubview:self.view];
        
        
        
    
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    self = [super initWithCoder:coder];
    if (self) {
        
        [[NSBundle mainBundle] loadNibNamed:@"HeaderLabel" owner: self
                                     options:nil];
        [self addSubview:self.view];
     
        
    }
    return self;
}


@end
