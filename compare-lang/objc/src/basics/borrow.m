#import <Foundation/Foundation.h>
#include <stdio.h>

void run_borrow(void) {
    @autoreleasepool {
        printf("[borrow]\n");

        NSMutableString *owner = [NSMutableString stringWithString:@"Hello"];
        NSString *ref = owner; // 同じ実体を参照

        [owner appendString:@" World"];
        printf("  owner=%s\n", [owner UTF8String]);
        printf("  ref  =%s\n", [ref UTF8String]);
    }
}
