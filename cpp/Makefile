.PHONY: test clean

TEST_BUILD_DIR := test/build
SUMMARY_BUILD_DIR := summary/build

test: $(TEST_BUILD_DIR)
	set -x && cd $(TEST_BUILD_DIR) && cmake .. && make && ./cpp-code-practice-test

$(TEST_BUILD_DIR):
	mkdir -p $(TEST_BUILD_DIR)

summary: $(SUMMARY_BUILD_DIR)
	set -x && cd $(SUMMARY_BUILD_DIR) && cmake .. && make && ./cpp-code-practice-summary

$(SUMMARY_BUILD_DIR):
	mkdir -p $(SUMMARY_BUILD_DIR)

clean:
	rm -rf $(TEST_BUILD_DIR)
	rm -rf $(SUMMARY_BUILD_DIR)