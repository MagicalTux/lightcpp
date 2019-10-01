#include <stdio.h>

class TestParent {
public:
	virtual void foo() = 0;
	virtual ~TestParent() {};
};

class Test: public TestParent {
public:
	void foo() {
		printf("hello world\n");
	}
};

int main(int argc, char *argv[]) {
	TestParent *a = new Test();
	a->foo();

	delete a;

	return 0;
}
