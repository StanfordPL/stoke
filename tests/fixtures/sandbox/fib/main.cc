int foo(int x) {
	if (x == 0) {
		return x;
	} else {
		return x + foo(x-1);
	}
}

int bar() {
	return foo(5);
}

int main() {
	bar();
	return 0;
}
