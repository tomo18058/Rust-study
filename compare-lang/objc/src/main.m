#import <Foundation/Foundation.h>
#import <string.h>
#import "basics/topics.h"

static const Topic kTopics[] = {
    {"basics", "基本", run_basics},
    {"print", "出力とデバッグ", run_print},
    {"variables", "変数と型", run_variables},
    {"ownsership", "所有", run_ownsership},
    {"borrow", "借用", run_borrow},
    {"slice", "スライス", run_slice},
    {"vecs", "Vec相当", run_vecs},
    {"hashmaps", "HashMaps相当", run_hashmaps},
};

static const int kTopicCount = (int)(sizeof(kTopics) / sizeof(kTopics[0]));

static void print_usage(const char *argv0) {
    printf("Usage:\n");
    printf("  %s --list\n", argv0);
    printf("  %s <topic>\n", argv0);
    printf("\nTopics:\n");
    for (int i = 0; i < kTopicCount; i++) {
        printf("  %-10s : %s\n", kTopics[i].key, kTopics[i].desc);
    }
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        if (argc <= 1 || strcmp(argv[1], "--help") == 0) {
            print_usage(argv[0]);
            return 0;
        }

        if (strcmp(argv[1], "--list") == 0) {
            for (int i = 0; i < kTopicCount; i++) {
                printf("%-10s : %s\n", kTopics[i].key, kTopics[i].desc);
            }
            return 0;
        }

        const char *target = argv[1];

        for (int i = 0; i < kTopicCount; i++) {
            if (strcmp(kTopics[i].key, target) == 0) {
                kTopics[i].fn();
                return 0;
            }
        }

        printf("Unknown topic: %s\n\n", target);
        print_usage(argv[0]);
        return 1;
    }
}