package View;

import Model.TablePosto;
import Controller.PostoController;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;

/**
 *
 * @author LucasLima
 */
public class Index extends javax.swing.JFrame {

     TablePosto tablePostos = new TablePosto();
    
    public Index() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jBtnFiltrar = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTablePostos = new javax.swing.JTable();
        jMenuBar1 = new javax.swing.JMenuBar();
        jMenuImport = new javax.swing.JMenu();
        jMenuArqPosto = new javax.swing.JMenuItem();
        jMenuArqCombus = new javax.swing.JMenuItem();
        jMenuCadastrar = new javax.swing.JMenu();
        jMenuEditar = new javax.swing.JMenu();
        jMenuVisualizar = new javax.swing.JMenu();
        jMenuHistorico = new javax.swing.JMenu();
        jMenuExcluir = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Postos de combustível de Santa Maria");
        setLocation(new java.awt.Point(300, 150));
        setPreferredSize(new java.awt.Dimension(940, 520));
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosed(java.awt.event.WindowEvent evt) {
                formWindowClosed(evt);
            }
        });

        jLabel1.setText("Filtrar postos por bairro:");

        jBtnFiltrar.setText("Filtrar");
        jBtnFiltrar.setPreferredSize(new java.awt.Dimension(67, 30));
        jBtnFiltrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jBtnFiltrarActionPerformed(evt);
            }
        });

        jTablePostos.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jTablePostos.setModel(tablePostos);
        jScrollPane1.setViewportView(jTablePostos);

        jMenuImport.setText("Importar CSV");
        jMenuImport.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jMenuImport.setName("menuImport"); // NOI18N

        jMenuArqPosto.setText("Arquivo de Postos");
        jMenuArqPosto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuArqPostoActionPerformed(evt);
            }
        });
        jMenuImport.add(jMenuArqPosto);

        jMenuArqCombus.setText("Arquivo de Combustíveis");
        jMenuArqCombus.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jMenuArqCombusActionPerformed(evt);
            }
        });
        jMenuImport.add(jMenuArqCombus);

        jMenuBar1.add(jMenuImport);

        jMenuCadastrar.setText("Cadastrar Posto");
        jMenuCadastrar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jMenuCadastrar.addMenuListener(new javax.swing.event.MenuListener() {
            public void menuCanceled(javax.swing.event.MenuEvent evt) {
            }
            public void menuDeselected(javax.swing.event.MenuEvent evt) {
            }
            public void menuSelected(javax.swing.event.MenuEvent evt) {
                jMenuCadastrarMenuSelected(evt);
            }
        });
        jMenuBar1.add(jMenuCadastrar);

        jMenuEditar.setText("Editar Posto");
        jMenuEditar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jMenuEditar.addMenuListener(new javax.swing.event.MenuListener() {
            public void menuCanceled(javax.swing.event.MenuEvent evt) {
            }
            public void menuDeselected(javax.swing.event.MenuEvent evt) {
            }
            public void menuSelected(javax.swing.event.MenuEvent evt) {
                jMenuEditarMenuSelected(evt);
            }
        });
        jMenuBar1.add(jMenuEditar);

        jMenuVisualizar.setText("Visualizar Posto");
        jMenuVisualizar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jMenuVisualizar.addMenuListener(new javax.swing.event.MenuListener() {
            public void menuCanceled(javax.swing.event.MenuEvent evt) {
            }
            public void menuDeselected(javax.swing.event.MenuEvent evt) {
            }
            public void menuSelected(javax.swing.event.MenuEvent evt) {
                jMenuVisualizarMenuSelected(evt);
            }
        });
        jMenuBar1.add(jMenuVisualizar);

        jMenuHistorico.setText("Histório de Combustíveis");
        jMenuHistorico.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jMenuHistorico.addMenuListener(new javax.swing.event.MenuListener() {
            public void menuCanceled(javax.swing.event.MenuEvent evt) {
            }
            public void menuDeselected(javax.swing.event.MenuEvent evt) {
            }
            public void menuSelected(javax.swing.event.MenuEvent evt) {
                jMenuHistoricoMenuSelected(evt);
            }
        });
        jMenuBar1.add(jMenuHistorico);

        jMenuExcluir.setText("Excluir Posto");
        jMenuExcluir.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jMenuExcluir.addMenuListener(new javax.swing.event.MenuListener() {
            public void menuCanceled(javax.swing.event.MenuEvent evt) {
            }
            public void menuDeselected(javax.swing.event.MenuEvent evt) {
            }
            public void menuSelected(javax.swing.event.MenuEvent evt) {
                jMenuExcluirMenuSelected(evt);
            }
        });
        jMenuBar1.add(jMenuExcluir);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 672, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jBtnFiltrar, javax.swing.GroupLayout.DEFAULT_SIZE, 92, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1)
                    .addComponent(jBtnFiltrar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(13, 13, 13)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 431, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jBtnFiltrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jBtnFiltrarActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jBtnFiltrarActionPerformed

    private void jMenuCadastrarMenuSelected(javax.swing.event.MenuEvent evt) {//GEN-FIRST:event_jMenuCadastrarMenuSelected
        new PostoView().setVisible(true);
    }//GEN-LAST:event_jMenuCadastrarMenuSelected

    private void jMenuEditarMenuSelected(javax.swing.event.MenuEvent evt) {//GEN-FIRST:event_jMenuEditarMenuSelected
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuEditarMenuSelected

    private void jMenuVisualizarMenuSelected(javax.swing.event.MenuEvent evt) {//GEN-FIRST:event_jMenuVisualizarMenuSelected
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuVisualizarMenuSelected

    private void jMenuHistoricoMenuSelected(javax.swing.event.MenuEvent evt) {//GEN-FIRST:event_jMenuHistoricoMenuSelected
        new HistoricoView().setVisible(true);
    }//GEN-LAST:event_jMenuHistoricoMenuSelected

    private void jMenuExcluirMenuSelected(javax.swing.event.MenuEvent evt) {//GEN-FIRST:event_jMenuExcluirMenuSelected
        // TODO add your handling code here:
    }//GEN-LAST:event_jMenuExcluirMenuSelected

    private void formWindowClosed(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosed
        // TODO add your handling code here:
        // Apagar todos os dados do arquivo CSV e salvar todos os dados do array list no lugar
    }//GEN-LAST:event_formWindowClosed

    private void jMenuArqPostoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuArqPostoActionPerformed
        // TODO add your handling code here:
        //jMenuArqPosto.setEnabled(false);
    }//GEN-LAST:event_jMenuArqPostoActionPerformed

    private void jMenuArqCombusActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jMenuArqCombusActionPerformed
        // TODO add your handling code here:
        //jMenuArqCombus.setEnabled(false);
    }//GEN-LAST:event_jMenuArqCombusActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Index().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jBtnFiltrar;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JMenuItem jMenuArqCombus;
    private javax.swing.JMenuItem jMenuArqPosto;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenu jMenuCadastrar;
    private javax.swing.JMenu jMenuEditar;
    private javax.swing.JMenu jMenuExcluir;
    private javax.swing.JMenu jMenuHistorico;
    private javax.swing.JMenu jMenuImport;
    private javax.swing.JMenu jMenuVisualizar;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTablePostos;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
}
