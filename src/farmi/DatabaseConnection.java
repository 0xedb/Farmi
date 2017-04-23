
package farmi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author bruno
 */
public class DatabaseConnection {
    Connection connect() throws SQLException {
        try {
            String url = "jdbc:mysql://localhost:3306/farmi";
            String user = "root";
            String password = "";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            return conn;            
        } catch(ClassNotFoundException | SQLException ex) {
            //an error occured 
        }
        return null;
    }
    
}
