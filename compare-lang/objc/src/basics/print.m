#import <Foundation/Foundation.h>
#include <stdio.h>
#import "topics.h"

void run_print(void) {
    @autoreleasepool {
        printf("[print] printfで出力\n");
        NSLog(@"[print] NSLogで出力 (日時なども付く)");
        printf("  number=%d\n", 42);
    }
}