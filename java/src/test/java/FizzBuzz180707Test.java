import static org.junit.Assert.*;

import org.junit.Test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class FizzBuzz180707Test {
    @Test
    public void fizzBuzzAll() {
        FizzBuzz180707 fizzBuzz = new FizzBuzz180707();
        String expect = readAll("test_resource/fizz_buzz_answer.txt");
        String real = fizzBuzz.getResult();
        System.out.println(expect);
        System.out.println(real);
        assertEquals(expect, real);
    }

    private static String readAll(String path) {
        StringBuilder builder = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new FileReader(path))) {
            String line = null;
            while ((line = reader.readLine()) != null) {
                builder.append(line + "\n");
            }
        } catch (IOException e) {
            System.out.println(e.toString());
        }
        return builder.toString();
    }
}
