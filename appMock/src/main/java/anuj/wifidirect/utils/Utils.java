package anuj.wifidirect.utils;

import android.graphics.Typeface;
import android.util.Log;
import android.widget.Toast;

import anuj.wifidirect.GlobalActivity;

/**
 * Created by anuj.sharma on 1/12/2017.
 */

public class Utils {
    private static Utils ourInstance = new Utils();
    /*
    *  -----------  Font Style Code
    * */
    private Typeface font_light, font_regular, font_bold, font_medium; // Typeface for set Font Style
    //    ----------- Set Font Cal
//    Calligrapher calligrapher;

    private Utils() {
    }

    public static Utils getInstance() {
        return ourInstance;
    }


    public static void d(String tag, String msg) {
        Log.d(tag, msg);
    }


    public final void showToast(String toast) {
        if (toast != null) {
            Toast toast1 = Toast.makeText(GlobalActivity.getGlobalContext(), toast, Toast.LENGTH_LONG);
//            toast1.setGravity(Gravity.CENTER, 0, 0);
            toast1.show();
        }
    }

}
