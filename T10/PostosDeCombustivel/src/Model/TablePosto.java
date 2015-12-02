package Model;

import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author LucasLima
 */
public class TablePosto extends AbstractTableModel {
    
    private ArrayList <Posto> postos;
    private static final String[] nomeColunas = {"ID", "CNPJ", "Razão Social", "Nome Fantasia", "Bandeira", "Endereço", "Bairro", "CEP"};
    private static final int numRow = 8;
    
    public TablePosto() {
        this.postos = new ArrayList <> ();
    }
    
    // Adiciona posto
    public void add(Posto p){
        postos.add(p);
        fireTableRowsInserted(postos.size()-1, postos.size()-1);
    }
    
    // Seleciona um posto da tabela visual
    public Posto select(int rowSelected){
        return postos.get(rowSelected);
    }
    
    // Remove um posto
    public void remove(int rowSelected) {
        postos.remove(rowSelected);
        fireTableRowsDeleted(rowSelected, rowSelected);
    }
    
    // Atualiza um posto
    public void update(int rowSelected, Posto p) {
        postos.set(rowSelected, p);
        fireTableRowsUpdated(rowSelected, rowSelected);
    }
    
    // Retorna o nome de uma coluna a partir de um índice
    @Override
    public String getColumnName(int columnIndex) {
        return nomeColunas[columnIndex];
    }
    
    // Retorna a quantidade de linhas na tabela
    @Override
    public int getRowCount(){
        return postos.size();
    }
    
    // Retorna a quantidade de colunas na tabela
    @Override
    public int getColumnCount() {
        return numRow;
    }

    // Preenche a tabela visual
    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Posto p = postos.get(rowIndex);
        switch (columnIndex) {
            case 0: return p.getId();
            case 1: return p.getCnpj();
            case 2: return p.getRazaoSocial();
            case 3: return p.getNomeFantasia();
            case 4: return p.getBandeira();
            case 5: return p.getEndereco();
            case 6: return p.getBairro();
            case 7: return p.getCep();
        }
        return null;
    }
    
}
