#import <Foundation/Foundation.h>
#include <stdio.h>

void run_hashmaps(void) {
    @autoreleasepool {
        printf("[hashmaps]\n");

        NSMutableDictionary *d = [NSMutableDictionary dictionary];
        [d setObject:@"Apple" forKey:@"a"];
        [d setObject:@"Banana" forKey:@"b"];

        for (id key in d) {
            printf("  %s => %s\n",
                [(NSString *)key UTF8String],
                [[d objectForKey:key] UTF8String]);
        }
    }
}
