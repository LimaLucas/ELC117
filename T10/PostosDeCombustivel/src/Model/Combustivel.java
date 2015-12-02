package Model;

import java.util.*;
/**
 *
 * @author LucasLima
 */
public class Combustivel {
    private String tipo;
    private Date dataColeta;
    private float precoCusto;
    private float precoVenda;
    private boolean vigente;
    private int idPosto;
    
    public Combustivel(){}

    public Combustivel(String tipo, Date dataColeta, float precoCusto, float precoVenda, boolean vigente, int idPosto) {
        this.tipo = tipo;
        this.dataColeta = dataColeta;
        this.precoCusto = precoCusto;
        this.precoVenda = precoVenda;
        this.vigente = vigente;
        this.idPosto = idPosto;
    }
    
    // Métodos Getter e Setter

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Date getDataColeta() {
        return dataColeta;
    }

    public void setDataColeta(Date dataColeta) {
        this.dataColeta = dataColeta;
    }

    public float getPrecoCusto() {
        return precoCusto;
    }

    public void setPrecoCusto(float precoCusto) {
        this.precoCusto = precoCusto;
    }

    public float getPrecoVenda() {
        return precoVenda;
    }

    public void setPrecoVenda(float precoVenda) {
        this.precoVenda = precoVenda;
    }

    public boolean isVigente() {
        return vigente;
    }

    public void setVigente(boolean vigente) {
        this.vigente = vigente;
    }

    public int getIdPosto() {
        return idPosto;
    }

    public void setIdPosto(int idPosto) {
        this.idPosto = idPosto;
    }

    
}
