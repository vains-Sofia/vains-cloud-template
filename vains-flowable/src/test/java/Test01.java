/**
 * @author vains
 */
public class Test01 {
    public static void main(String[] args) {
        int sum = 0;
        for (int i = 0; i < 10; i++) {
            sum = sum + i;
            if(i % 3 ==0){
                break;
            }
        }
        System.out.println(sum);
    }
}
