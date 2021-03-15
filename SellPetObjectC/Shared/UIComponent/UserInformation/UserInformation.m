//
//  UserInformation.m
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#import "UserInformation.h"
#import <Foundation/Foundation.h>

@implementation UserInformation

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"UserInformation" owner: self
                                     options:nil];
        [self addSubview:self.view];
        
        
        ///
        
        _userAvatar.layer.backgroundColor=[[UIColor clearColor] CGColor];
        _userAvatar.layer.cornerRadius= _userAvatar.frame.size.height / 2;
        _userAvatar.layer.borderWidth= 3;
        _userAvatar.layer.masksToBounds = YES;
        _userAvatar.layer.borderColor=[[UIColor whiteColor] CGColor];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    self = [super initWithCoder:coder];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"UserInformation" owner: self
                                     options:nil];
        [self addSubview:self.view];
        
        
        ///
        
        _userAvatar.layer.backgroundColor=[[UIColor clearColor] CGColor];
        _userAvatar.layer.cornerRadius= _userAvatar.frame.size.height / 2;
        _userAvatar.layer.borderWidth= 3;
        _userAvatar.layer.masksToBounds = YES;
        _userAvatar.layer.borderColor=[[UIColor whiteColor] CGColor];
    }
    return self;
}






@end
