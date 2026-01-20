#import <Foundation/Foundation.h>
#include <stdio.h>
#import "topics.h"

void run_ownsership(void) {
    @autoreleasepool {
        printf("ownsership (ownership的な話)\n");

        NSMutableString *a = [NSMutableString stringWithString:@"Hello"];
        NSMutableString *b = [a mutableCopy];

        [a appendString:@" World"];

        printf("a=%s\n", [a UTF8String]);
        printf("b=%s\n", [b UTF8String]);

        // ※ ARC使ってないなら必要 / ARCなら消す
        [b release];
    }
}
