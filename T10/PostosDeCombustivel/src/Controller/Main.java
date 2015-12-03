package Controller;

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
public class Main {
    public static void main(String[] args) {
        
        TablePosto tableModel = new TablePosto();
        
        try{
            String strFile = "src\\Files\\dados.csv";
            
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
