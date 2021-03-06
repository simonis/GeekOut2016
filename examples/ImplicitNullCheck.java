public class ImplicitNullCheck {

  int foo;

  public static int getFoo(ImplicitNullCheck inc) {
    return inc.foo;
  }

  public static void main(String[] args) {

    ImplicitNullCheck inc = new ImplicitNullCheck();
    for (long i = 0; i < 150000; i++)
      getFoo(inc);
    System.out.println("Warmup done");

    try {
      System.out.println(getFoo(null));
    } catch (Exception e) {}

    for (long i = 0; i < 150000; i++) {
      try {
        getFoo(null);
      } catch (Exception e) {}
    }
  }
}
