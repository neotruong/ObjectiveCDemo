//
//  ViewController.h
//  SellPetObjectC
//
//  Created by Neo Truong on 3/11/21.
//

#import <UIKit/UIKit.h>
#import "HeaderLabel.h"

@interface HomeScreen : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UIScrollView *mySrollView;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (weak, nonatomic) IBOutlet UIView *userInformationView;
@property (weak, nonatomic) IBOutlet UIView *logoView;
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionButton;
@property (weak, nonatomic) IBOutlet UICollectionView *bodyCollectionView_ecom;
@property (weak, nonatomic) IBOutlet UICollectionView *bodyCollectionView_feature;
@property (weak, nonatomic) IBOutlet UIView *bodyView;
@property (weak, nonatomic) IBOutlet HeaderLabel *headerLabel1;
@property (weak, nonatomic) IBOutlet HeaderLabel *headerLabel2;


@end

