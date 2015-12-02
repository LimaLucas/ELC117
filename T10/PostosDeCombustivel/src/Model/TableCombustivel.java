package Model;

import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;
/**
 *
 * @author LucasLima
 */
public class TableCombustivel extends AbstractTableModel {

    private ArrayList <Combustivel> combus;
    private static final String[] nomeColunas = {"Tipo", "Data de Coleta", "Preço de Custo", "Preço de Venda"};
    private static final int numRow = 4;
    
    public TableCombustivel() {
        this.combus = new ArrayList <> ();
    }
    
    // Adiciona Combustivel
    public void add(Combustivel c){
        combus.add(c);
        fireTableRowsInserted(combus.size()-1, combus.size()-1);
    }
    
    // Seleciona um Combustivel da tabela visual
    public Combustivel select(int rowSelected){
        return combus.get(rowSelected);
    }
    
    // Remove um Combustivel
    public void remove(int rowSelected) {
        combus.remove(rowSelected);
        fireTableRowsDeleted(rowSelected, rowSelected);
    }
    
    // Atualiza um Combustivel
    public void update(int rowSelected, Combustivel c) {
        combus.set(rowSelected, c);
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
        return combus.size();
    }
    
    // Retorna a quantidade de colunas na tabela
    @Override
    public int getColumnCount() {
        return numRow;
    }

    // Preenche a tabela visual
    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Combustivel c = combus.get(rowIndex);
        switch (columnIndex) {
            case 0: return c.getTipo();
            case 1: return c.getDataColeta();
            case 2: return c.getPrecoCusto();
            case 3: return c.getPrecoVenda();
        }
        return null;
    }
}
