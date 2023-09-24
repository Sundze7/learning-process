import java.util.Scanner;

public class User{
public static void main(String[] args)
{
Scanner input = new
Scanner(System.in);
String name = input.nextLine();
int age = input.nextInt();
System.out.println("Hello "+ name + " " + age);

}
}