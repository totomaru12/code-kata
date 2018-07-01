.PHONY: test clean

TEST_BUILD_DIR := test/build

test: $(TEST_BUILD_DIR)
	set -x && cd $(TEST_BUILD_DIR) && cmake .. && make && ./cpp-code-practice-test

$(TEST_BUILD_DIR):
	mkdir -p $(TEST_BUILD_DIR)

clean:
	rm -rf $(TEST_BUILD_DIR)