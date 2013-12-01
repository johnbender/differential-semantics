class Foo extends Bar {
    private int bing = 0;

    int baz() {
        return new Qux( bing );
    }
}
