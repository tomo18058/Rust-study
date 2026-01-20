#import <Foundation/Foundation.h>
#include <stdio.h>

void run_variables(void) {
    @autoreleasepool {
        int a = 10;
        double pi = 3.14;
        NSString *name = @"Tom";

        printf("[variables]\n");
        printf("  a=%d pi=%.2f name=%s\n", a, pi, [name UTF8String]);
    }
}
