class Foo extends Bar {
    private int bak = 0;

    int baz() {
        return bak + this.bik() + 10;
    }

    int bik() {
        return bak - 5;
    }
}
