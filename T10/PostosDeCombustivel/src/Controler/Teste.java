package Controler;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.StringTokenizer;

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
            int lineNumber = 0, tokenNumber = 0;
            
            while( (strLine = br.readLine()) != null){
                lineNumber++;
                st = new StringTokenizer(strLine, ",");
                
                while(st.hasMoreTokens()){
                    tokenNumber++;
                    System.out.println("Line # " + lineNumber + ", Token # " + tokenNumber + ", Token : "+ st.nextToken());
                }
                
                tokenNumber = 0;
            }
        }catch(Exception e){
            System.out.println("Exceção durante leitura de arquivo CSV: " + e);
        }
    }
}
