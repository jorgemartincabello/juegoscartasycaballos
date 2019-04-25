/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculadoras;

import java.util.Arrays;
import java.util.Collection;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

/**
 *
 * @author Usuario
 */
@RunWith (value = Parameterized.class)

public class Calculadora1TestParametrizado {
    
    double numero1;
    double numero2;
    double sumaExp;
    double restaExp;
    double diviExp;
    double multiExp;
   
     public Calculadora1TestParametrizado(double numero1, double numero2, double sumaExp, double restaExp, double diviExp, double multiExp) {
        this.numero1 = numero1;
        this.numero2 = numero2;
        this.sumaExp=sumaExp;
        this.restaExp=restaExp; 
        this.diviExp=diviExp;
        this.multiExp=multiExp;
    }
    
    
    @Parameters
     public static Collection<Object[]> data() {
    Object[][] data = new Object[][] { {10,2,12,8,5,20}, {20,4,24,16,5,80}, {15,2,1,4,8,12 }} ;
    return Arrays.asList(data);
  } 

    /**
     * Test of suma method, of class Calculadora1.
     */
    @Test
    public void testSuma() {
        System.out.println("suma");
      
        Calculadora1 instance = new Calculadora1();
      
        double result = instance.suma(numero1, numero2);
        assertEquals(sumaExp, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of resta method, of class Calculadora1.
     */
    @Test
    public void testResta() {
        System.out.println("resta");
        Calculadora1 instance = new Calculadora1();
        
        double result = instance.resta(numero1, numero2);
        assertEquals(restaExp, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of multiplicacion method, of class Calculadora1.
     */
    @Test
    public void testMultiplicacion() {
        System.out.println("multiplicacion");
       
        Calculadora1 instance = new Calculadora1();
        double expResult = 20.0;
        double result = instance.multiplicacion(numero1, numero2);
        assertEquals(multiExp, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
       // fail("The test case is a prototype.");
    }

    /**
     * Test of division method, of class Calculadora1.
     */
    @Test
    public void testDivision() {
        System.out.println("division");
 
        Calculadora1 instance = new Calculadora1();
        double expResult = 5.0;
        double result = instance.division(numero1, numero2);
        assertEquals(diviExp, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
