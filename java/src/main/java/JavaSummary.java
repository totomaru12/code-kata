public class JavaSummary {

    public void summaryMain() {
        System.out.println("Hello World");

        this.Variable();
        this.Control();
    }

    private void Variable() {
        String s1 = "string1";
        String s2 = "string2";
        System.out.println(s1 + s2);

        char c = 'a';
        System.out.println(s1 + c + s2);

        int i = (123 / 10) * 10;
        System.out.println(i + 10 - 5);
        System.out.println(10 % 4);
        System.out.println(++i);
        System.out.println(--i);

        long l = 12345678901234L;
        System.out.println(l);

        double d = 123.34;
        System.out.println(d);

        float f = 123.34F;
        System.out.println(f);

        boolean b = true;
        System.out.println(b);
    }

    private void Control() {
        int score = 91;
        if (score > 90) {
            System.out.println("Good");
        } else if (score > 60) {
            System.out.println("OK");
        } else {
            System.out.println("so so");
        }

        System.out.println(score > 90 ? "Good" : "OK");
    }
}