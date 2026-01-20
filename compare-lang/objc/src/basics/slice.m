#import <Foundation/Foundation.h>
#include <stdio.h>

void run_slice(void) {
    @autoreleasepool {
        printf("[slice]\n");

        NSString *s = @"HelloObjectiveC";
        NSString *sub = [s substringWithRange:NSMakeRange(5, 9)];
        printf("  %s -> %s\n", [s UTF8String], [sub UTF8String]);
    }
}
