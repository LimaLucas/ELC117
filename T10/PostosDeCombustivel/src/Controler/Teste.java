package Controler;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.StringTokenizer;

import Model.*;
import View.*;

/**
 *
 * @author LucasLima
 */
public class Teste {
    public static void main(String[] args) {
        
        
        
        try{
            String strFile = "C:/Users/LucasLima/Documents/Git/ELC117_Paradigmas-Prog/T10/dados_postos.csv";
            
            BufferedReader br = new BufferedReader( new FileReader(strFile));
            String strLine = "";
            StringTokenizer st = null;
            int lineNumber = 0, columnNumber = 0;
            
            while((strLine = br.readLine()) != null){
                lineNumber++;
                st = new StringTokenizer(strLine, ",");
                
                while(lineNumber == 1 && st.hasMoreTokens()){
                    columnNumber++;
                    System.out.println("Line # " + lineNumber + ", Token # " + columnNumber + ", Token : "+ st.nextToken());
                }
                
                columnNumber = 0;
            }
        }catch(Exception e){
            System.out.println("Exceção durante leitura de arquivo CSV: " + e);
        }
    }
}
