//
//  CollectionViewCell.h
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#import <UIKit/UIKit.h>
#import "CoopBankButton.h"
NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet CoopBankButton *cellComponent;

@end

NS_ASSUME_NONNULL_END
