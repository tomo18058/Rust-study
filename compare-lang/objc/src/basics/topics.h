#pragma once
#import <Foundation/Foundation.h>

#ifdef __cplusplus
extern "C" {
    #endif

    typedef void (*TopicFn)(void);

    typedef struct {
        const char *key;     // トピックキー（コマンドライン引数）        // 実行関数
        const char *desc;    // 説明（--listで表示）
        TopicFn fn;        // 実行関数
    } Topic;

    void run_basics(void);
    void run_variables(void);
    void run_ownsership(void);
    void run_borrow(void);
    void run_slice(void);
    void run_vecs(void);
    void run_hashmaps(void);
    void run_print(void);

    #ifdef __cplusplus
}

#endif