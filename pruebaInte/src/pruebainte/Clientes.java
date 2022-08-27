/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebainte;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.CallableStatement;
import javax.lang.model.util.Types;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author User
 */
public class Clientes extends javax.swing.JFrame {

    private Connection con;
    private Statement comando;

    public Clientes() {
        initComponents();
        this.setLocationRelativeTo(this);
        conectar();
        actualizarTabla();
    }

    private void conectar() {
        try {
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "trabajoFinal", "trabajoFinal");
            comando = con.createStatement();
            JOptionPane.showMessageDialog(this, "Conexión Éxitosa");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, e);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        inId = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        inNombre = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        inApellido = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        radMasculino = new javax.swing.JRadioButton();
        radFemenino = new javax.swing.JRadioButton();
        jLabel8 = new javax.swing.JLabel();
        inTelefono = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        inCorreo = new javax.swing.JTextField();
        jSeparator1 = new javax.swing.JSeparator();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        bSalir = new javax.swing.JButton();
        bInsertar = new javax.swing.JButton();
        bModificar = new javax.swing.JButton();
        bEliminar = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel1.setText("Intelec - Clientes");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel2.setText("Añadir/modificar/eliminar Cliente");

        jLabel3.setText("*Nota: el campo \"id\" se utiliza solo en caso de eliminar ó modificar algún cliente");

        jLabel4.setText("Id:");

        jLabel5.setText("Nombre:");

        jLabel6.setText("Apellido:");

        jLabel7.setText("Género:");

        radMasculino.setText("M");
        radMasculino.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                radMasculinoActionPerformed(evt);
            }
        });

        radFemenino.setText("F");

        jLabel8.setText("Teléfono:");

        jLabel9.setText("Correo:");

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "Id", "Nombre", "Apellido", "Género", "Teléfono", "Correo"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTable1);

        bSalir.setText("Salir");
        bSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bSalirActionPerformed(evt);
            }
        });

        bInsertar.setForeground(new java.awt.Color(51, 153, 0));
        bInsertar.setText("Insertar");
        bInsertar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bInsertarActionPerformed(evt);
            }
        });

        bModificar.setForeground(new java.awt.Color(51, 153, 255));
        bModificar.setText("Modificar");
        bModificar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bModificarActionPerformed(evt);
            }
        });

        bEliminar.setForeground(new java.awt.Color(204, 0, 0));
        bEliminar.setText("Eliminar");
        bEliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bEliminarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addComponent(jSeparator1)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(inId, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(30, 30, 30)
                                        .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(inNombre, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(inApellido, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(radMasculino)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(radFemenino)
                                        .addGap(18, 18, 18)
                                        .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(bInsertar, javax.swing.GroupLayout.PREFERRED_SIZE, 293, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(bModificar, javax.swing.GroupLayout.PREFERRED_SIZE, 331, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(bEliminar, javax.swing.GroupLayout.PREFERRED_SIZE, 320, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(inTelefono, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(inCorreo))))
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 240, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)
                            .addComponent(bSalir)
                            .addComponent(jLabel3))
                        .addGap(0, 8, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(2, 2, 2)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel3)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(inId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(inNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6)
                    .addComponent(inApellido, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7)
                    .addComponent(radMasculino)
                    .addComponent(radFemenino)
                    .addComponent(jLabel8)
                    .addComponent(inTelefono, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9)
                    .addComponent(inCorreo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 15, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(bInsertar)
                    .addComponent(bModificar)
                    .addComponent(bEliminar))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(bSalir)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void radMasculinoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_radMasculinoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_radMasculinoActionPerformed

    private void bSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bSalirActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_bSalirActionPerformed

    private void bInsertarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bInsertarActionPerformed
        // TODO add your handling code here:    
        int id = Integer.parseInt(inId.getText());
        String nombre = inNombre.getText();
        String apellido = inApellido.getText();
        boolean fem = radFemenino.isSelected();
        boolean mas = radMasculino.isSelected();
        String genero = "";
        if (fem) {
            genero = "F";
        } else if (mas) {
            genero = "M";
        } else {
            genero = "O";
        }
        String telefono = inTelefono.getText();
        String correo = inCorreo.getText();

        try {
            CallableStatement cstmt = con.prepareCall("{? = call F_INSERT_CLIENTES(?,?,?,?,?,?)}");
            cstmt.registerOutParameter(1,java.sql.Types.INTEGER);
            cstmt.setInt(2,id);
            cstmt.setString(3, nombre);
            cstmt.setString(4, apellido);
            cstmt.setString(5, genero);
            cstmt.setInt(6, Integer.parseInt(telefono));
            cstmt.setString(7, correo);

            cstmt.executeUpdate();
            
            int result = cstmt.getInt(1);
            actualizarTabla();
            limpiarCampos();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, e);
            System.out.println(e);
        }

       /* String sql;
        sql = "INSERT INTO CLIENTES (IDCLIENTE, NOMBRE, APELLIDO, GENERO, TELEFONO, CORREO) VALUES(" + id + ", '" + nombre + "', '" + apellido + "', '" + genero + "', '" + telefono + "', '" + correo + "')";
        try {
            //Ejecutar Sentencia SQL en la base de datos
            comando.executeUpdate(sql);
            actualizarTabla();
            //System.out.println(sql);
            //GUI
            limpiarCampos();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, e);
        }*/
    }//GEN-LAST:event_bInsertarActionPerformed

    private void limpiarCampos() {
        inNombre.setText("");
        inId.setText("");
        inApellido.setText("");
        inTelefono.setText("");
        inCorreo.setText("");
        radMasculino.setSelected(false);
        radFemenino.setSelected(false);
    }

    private void bModificarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bModificarActionPerformed
        // TODO add your handling code here:
        int id = Integer.parseInt(inId.getText());
        String nombre = inNombre.getText();
        String apellido = inApellido.getText();
        boolean fem = radFemenino.isSelected();
        boolean mas = radMasculino.isSelected();
        String genero;
        if (fem) {
            genero = "Mujer";
        } else if (mas) {
            genero = "Hombre";
        } else {
            genero = "O";
        }
        int telefono = Integer.parseInt(inTelefono.getText());
        String correo = inCorreo.getText();

        String sql;
        sql = "UPDATE CLIENTES SET NOMBRE= '" + nombre + "', APELLIDO = '" + apellido + "', GENERO = '" + genero + "', TELEFONO = '" + telefono + "', '" + correo + "'"
                + " WHERE IDCLIENTE = " + id;
        try {
            comando.executeUpdate(sql);
            actualizarTabla();

            limpiarCampos();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, e);
        }
    }//GEN-LAST:event_bModificarActionPerformed

    private void bEliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bEliminarActionPerformed
        // TODO add your handling code here:
        int id = Integer.parseInt(inId.getText());

        String sql;
        sql = "DELETE FROM CLIENTES WHERE IDCLIENTE = " + id;
        try {
            comando.executeUpdate(sql);
            actualizarTabla();
            limpiarCampos();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, e);
        }
    }//GEN-LAST:event_bEliminarActionPerformed

    private void actualizarTabla() {
        try {
            String sql = "SELECT * FROM CLIENTES";
            ResultSet respuesta = comando.executeQuery(sql);
            DefaultTableModel contenido = (DefaultTableModel) jTable1.getModel();
            contenido.setRowCount(0);
            int fila = 0;
            for (int i = 0; respuesta.next(); i++) {
                contenido.insertRow(i,
                        new Object[]{respuesta.getInt("IDCLIENTE"),
                            respuesta.getString("NOMBRE"),
                            respuesta.getString("APELLIDO"),
                            respuesta.getString("GENERO"),
                            respuesta.getInt("TELEFONO"),
                            respuesta.getString("CORREO")}
                );
                fila++;
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, e);
        }
    }

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
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Clientes().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bEliminar;
    private javax.swing.JButton bInsertar;
    private javax.swing.JButton bModificar;
    private javax.swing.JButton bSalir;
    private javax.swing.JTextField inApellido;
    private javax.swing.JTextField inCorreo;
    private javax.swing.JTextField inId;
    private javax.swing.JTextField inNombre;
    private javax.swing.JTextField inTelefono;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTable jTable1;
    private javax.swing.JRadioButton radFemenino;
    private javax.swing.JRadioButton radMasculino;
    // End of variables declaration//GEN-END:variables
}