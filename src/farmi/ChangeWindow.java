
package farmi;

import java.io.IOException;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 *
 * @author Bruno Edoh
 */
public class ChangeWindow {

    private final String fxmlFile;
    private final String title;
    private final Stage stage;

    public ChangeWindow(String fxmlFile, String title, Stage stage) {
        this.fxmlFile = fxmlFile;
        this.title = title;
        this.stage = stage;

    }

    /**
     * set the window to a different one
     */
    Stage change() {
        try {
            Parent root = FXMLLoader.load(getClass().getResource(fxmlFile));

            Scene scene = new Scene(root);
            stage.setScene(scene);
            stage.setTitle(title);
            stage.setResizable(false);
            return stage;

        } catch (IOException ex) {
            // the file does not exist
        }
        return null;
    }

}
