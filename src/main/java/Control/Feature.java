package Control;

import java.util.Random;

public class Feature {
    public String getCode(){
        String character = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        int length = 10;

        Random random = new Random();
        StringBuilder code = new StringBuilder(length);

        for(int i = 0 ; i < length ; i++){
            int randomIndex = random.nextInt(character.length());
            char randomChar = character.charAt(randomIndex);
            code.append(randomChar);
        }
        return code.toString();
    }
}
