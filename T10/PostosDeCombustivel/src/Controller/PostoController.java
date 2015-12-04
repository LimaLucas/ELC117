package Controller;

import View.*;
import Model.TablePosto;
import Model.Posto;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.StringTokenizer;

/**
 *
 * @author LucasLima
 */
public class PostoController implements ActionListener {
    
    public PostoController(){}
    
    public void inicializaDados(TablePosto tablePostos){
        
        Posto P = new Posto();;
        
        try{
            String strFile = "src\\Files\\dados.csv";

            BufferedReader br = new BufferedReader( new FileReader(strFile));
            String strLine = "";
            StringTokenizer st = null;
            int lineNumber = 0;

            while((strLine = br.readLine()) != null){
                lineNumber++;
                st = new StringTokenizer(strLine, ",");
                
                if(lineNumber == 1){
                    while(st.hasMoreTokens()){
                        st.nextToken();
                    }
                }else{

                    P = new Posto(Integer.parseInt(st.nextToken()), st.nextToken(), st.nextToken(), st.nextToken(), 
                                  st.nextToken(), st.nextToken(), st.nextToken(), st.nextToken(), st.nextToken());
                    
                    if(P != null)
                        tablePostos.add(P);
                    
//                    while(st.hasMoreTokens()){
//                        P.setId(Integer.parseInt(st.nextToken()));
//                        P.setCnpj(st.nextToken());
//                        P.setRazaoSocial(st.nextToken());
//                        P.setNomeFantasia(st.nextToken());
//                        P.setBandeira(st.nextToken());
//                        P.setEndereco(st.nextToken());
//                        P.setBairro(st.nextToken());
//                        P.setCep(st.nextToken());
//                    }
                }
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
