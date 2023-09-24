
import java.util.Scanner;

public class Student{
    private String firstName;
    private String lastName;
    private String gradeYear;
    private String studentID;
    private String courses= "";
    private int tuitionBalance= 0;
    private int costOfCourse = 1000;
    private static int id = 10;

    // Constructor: prompt user to enter student's name and year
    public Student(){
        Scanner in = new Scanner(System.in);
        System.out.print("Enter Student first name: "); 
        this.firstName = in.nextLine();

        System.out.print("Enter Student Last Name: ");
        this.lastName = in.nextLine();

        System.out.print("FE19A0 - F.E.T\nCO19A0 - C.O.T\nHS19A0 - F.H.S\nAS19A0 - A.S.T.I\nEnter Student's Domain: ");
        this.gradeYear = in.nextLine();

        setStudentID();
        
       
    }

     //Generate an ID
     private void setStudentID(){
         //Grade Level + ID
         id++;
         this.studentID = gradeYear + "" + id;
     }

    // Enroll in courses
    public void enroll(){
        do{
            System.out.print("Enter course to enroll (Q to quit): ");
            Scanner in = new Scanner(System.in);
            String course = in.nextLine();
            if (!course.equals("Q")){
               courses= courses + "\n  " + course;
               tuitionBalance= tuitionBalance + costOfCourse;
           }
           else{
               break;
           }
       } while (1!=0);
     
    }
    //view balance
    public void viewBalance(){
        System.out.println("Your balancee is: "+tuitionBalance+" FCFA");
    }
    //pay Tuition
    public void payTuition(){
        viewBalance();
        System.out.println("Enter your payment (FCFA): " );
        Scanner in = new Scanner(System.in);
        int payment = in.nextInt();
        tuitionBalance = tuitionBalance - payment;
        System.out.println("Thank you for your payment of "+payment+" FCFA");
        viewBalance();
    }
    // show status
    public String toString(){
        return "Name: " + firstName + " " + lastName +
               "\nStudent ID: " + studentID +
               "\nCourses Enrolled: " + courses +
               "\nBalance: " + tuitionBalance + " FCFA";
            
    }

}