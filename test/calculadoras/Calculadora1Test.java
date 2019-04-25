/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculadoras;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Usuario
 */
public class Calculadora1Test {
    
    
    public Calculadora1Test() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of suma method, of class Calculadora1.
     */
    @Test
    public void testSuma() {
        System.out.println("suma");
        double numero1 = 10;
        double numero2 = 5.5;
        Calculadora1 instance = new Calculadora1();
        double expResult = 15.5;
        double result = instance.suma(numero1, numero2);
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of resta method, of class Calculadora1.
     */
    @Test
    public void testResta() {
        System.out.println("resta");
        double numero1 = 10.0;
        double numero2 = 2.5;
        Calculadora1 instance = new Calculadora1();
        double expResult = 7.5;
        double result = instance.resta(numero1, numero2);
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of multiplicacion method, of class Calculadora1.
     */
    @Test
    public void testMultiplicacion() {
        System.out.println("multiplicacion");
        double numero1 = 10.0;
        double numero2 = 2.0;
        Calculadora1 instance = new Calculadora1();
        double expResult = 20.0;
        double result = instance.multiplicacion(numero1, numero2);
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
       // fail("The test case is a prototype.");
    }

    /**
     * Test of division method, of class Calculadora1.
     */
    @Test
    public void testDivision() {
        System.out.println("division");
        double numero1 = 20.0;
        double numero2 = 4.0;
        Calculadora1 instance = new Calculadora1();
        double expResult = 5.0;
        double result = instance.division(numero1, numero2);
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
