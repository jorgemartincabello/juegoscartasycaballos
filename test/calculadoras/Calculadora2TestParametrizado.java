
package calculadoras;

import java.util.Arrays;
import java.util.Collection;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;


@RunWith (value = Parameterized.class)

public class Calculadora2TestParametrizado {
    
    double numero1;
    double numero2;
    double expResult;
    double numerosuma1;
    double numerosuma2;
    double expSuma;

    public Calculadora2TestParametrizado(double numero1, double numero2, double espResult, double numerosuma1, double numerosuma2, double expSuma) {
        this.numero1 = numero1;
        this.numero2 = numero2;
        this.expResult = espResult;
        this.numerosuma1= numerosuma1;
        this.numerosuma2= numerosuma2;
        this.expSuma= expSuma;
    }
    
    @Parameters
     public static Collection<Object[]> data() {
    Object[][] data = new Object[][] { {10,3,1,2,3,5}, {20,8,4,10,4,14}, {15,2,1,4,8,12 }} ;
    return Arrays.asList(data);
  } 
    
    
    
    @Test
    public void testSuma() {
        System.out.println("suma");
        Calculadora1 instance = new Calculadora1();
      
        double result = instance.suma(numerosuma1, numerosuma2);
        assertEquals(expSuma, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
