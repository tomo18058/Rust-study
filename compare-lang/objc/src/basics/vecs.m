#import <Foundation/Foundation.h>
#include <stdio.h>

void run_vecs(void) {
    @autoreleasepool {
        printf("[vecs]\n");

        NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", nil];
        for (NSString *v in arr) {
            printf("  %s\n", [v UTF8String]);
        }
    }
}
