//
//  CoopBankButton.m
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#import "CoopBankButton.h"
#import <Foundation/Foundation.h>

@implementation CoopBankButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       
        [[NSBundle mainBundle] loadNibNamed:@"CoopBankButton" owner: self
                                     options:nil];
        [self addSubview:self.view];
        
        
        
    
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    self = [super initWithCoder:coder];
    if (self) {
        
        [[NSBundle mainBundle] loadNibNamed:@"CoopBankButton" owner: self
                                     options:nil];
        [self addSubview:self.view];
        
        CGRect rect = _buttonImage.frame;
        rect.size.height = 10;
        _buttonImage.frame = rect;

        
    }
    return self;
}


@end
