/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peminjaman_buku_perpustakaan;

/**
 *
 * @author nullomicron
 */
public class Main {

  /**
   * @param args the command line arguments
   */
  public static void main(String[] args) {
    // TODO code application logic here
    try {
      System.setProperty("awt.useSystemAAFontSettings","on");
      System.setProperty("swing.aatext", "true");
      for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
        if ("Nimbus".equals(info.getName())) {
          javax.swing.UIManager.setLookAndFeel(info.getClassName());
          break;
        }
      }
    } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
      java.util.logging.Logger.getLogger(MenuUtama.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
    }
      //</editor-fold>
      
    //</editor-fold>

    /*
     * Create and display the form
     */
    java.awt.EventQueue.invokeLater(() -> {
        new MenuUtama().setVisible(true);
    });
  }
  
}
