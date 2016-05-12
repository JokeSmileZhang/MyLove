//
//  DetailViewController.h
//  kk
//
//  Created by JokeSmileZhang on 16/3/10.
//  Copyright © 2016年 JokeSmileZhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

