#import <Foundation/Foundation.h>

void run_basics(void) {
    printf("Objective-Cの超基本\n");

    // nilは「何もない」ポインタ（RustのOptionっぽい話の入り口）
    NSString *maybe = nil;
    if (maybe == nil) {
        printf("maybe は nil\n");
    }

    // オブジェクトはメッセージ送信で動く
    NSString *s = @"Hello";
    printf("s.length = %lu\n", (unsigned long)[s length]);

    // NSString は基本イミュータブル（変更したいときは新しい文字列を作る）
    NSString *t = [s stringByAppendingString:@", Objective-C"];
    printf("t = %s\n", [t UTF8String]);

    // クラス名
    printf("class = %s\n", class_getName([t class]));
}
