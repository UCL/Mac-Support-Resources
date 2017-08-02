//
//  main.m
//  Print@UCL
//
//  Created by Alex Uhde on 02/08/2017.
//  Copyright © 2017 University College London. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
