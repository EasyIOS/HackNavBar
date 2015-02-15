//
//  Aspect-NavBar.m
//  mcapp
//
//  Created by zhuchao on 15/2/15.
//  Copyright (c) 2015年 zhuchao. All rights reserved.
//

#import "AppDelegate.h"
#import <XAspect/XAspect.h>

#define AtAspect NavBar

#define AtAspectOfClass AppDelegate
@classPatchField(AppDelegate)
AspectPatch(-, BOOL, application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions)
{
    [$ swizzleMethod:@selector(setTitle:) with:@selector(nav_setTitle:) in:[Scene class]];
    [$ swizzleMethod:@selector(showBarButton:button:) with:@selector(nav_showBarButton:button:) in:[Scene class]];
    [$ swizzleMethod:@selector(setTitleView:) with:@selector(nav_setTitleView:) in:[Scene class]];
    
    return XAMessageForward(application:application didFinishLaunchingWithOptions:launchOptions);
}
@end
#undef AtAspectOfClass

#undef AtAspect
