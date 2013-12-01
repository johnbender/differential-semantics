int expn(int val, int exp) {
  int result = val;

  while( exp > 1 ) { result *= val; exp--; }

  -> return result;
}
