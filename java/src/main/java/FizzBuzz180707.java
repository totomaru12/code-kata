
public class FizzBuzz180707 {

    public String getResult() {
        String result = "";
        for (int i = 1; i <= 100; i++) {
            result += getResultAt(i);
            result += "\n";
        }
        return result;
    }

    private String getResultAt(int number) {
        if (number % 15 == 0) {
            return "FizzBuzz";
        } else if (number % 3 == 0) {
            return "Fizz";
        } else if (number % 5 == 0) {
            return "Buzz";
        } else {
            return String.valueOf(number);
        }
    }
}