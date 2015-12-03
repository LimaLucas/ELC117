package Controller;

import Model.TableCombustivel;
import Model.TablePosto;
import View.HistoricoView;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.StringTokenizer;

/**
 *
 * @author LucasLima
 */
public class CombusController implements ActionListener {
    
    TablePosto tableModel = new TablePosto();
    
    public void inicializa(){
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
                    st.nextToken();
                }

                System.out.println("Teste");

                columnNumber = 0;
            }
        }catch(Exception e){
            System.out.println("Exceção durante leitura de arquivo CSV: " + e);
        };
    }
        
    @Override
    public void actionPerformed(ActionEvent e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
