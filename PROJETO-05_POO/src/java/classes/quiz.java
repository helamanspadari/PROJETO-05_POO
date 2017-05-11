package classes;

import java.util.ArrayList;

public class quiz {
    private static int testesCont = 0;
    private static double testesGradeSum = 0.0;
    private static double ultmaGrade = 0.0;
    private static ArrayList<question> teste;
    
    public static ArrayList<question> getTeste(){
        if(teste == null){
            teste = new ArrayList<>();
            question q1 = new question
            ("1+1?", "2", new String[]{"0","2","1"});
            teste.add(q1);
            question q2 = new question
            ("1+2?", "3", new String[]{"0","2","3"});
            question q3 = new question
            ("mario ou maria?", "mario", new String[] {"mario", "maria"});
        }
        return teste;
    }
    public static double validarTeste(String userRespostas[]){
        int cont = 0;
        for(int i=0; i<teste.size(); i++){
            if(teste.get(i).getResposta().equals(userRespostas[i])){
                cont++;
            }
        }
        double grade = (double)cont / (double)teste.size();
        quiz.ultmaGrade = grade;
        quiz.testesGradeSum += grade;
        quiz.testesCont++;
        
        return grade;
    }
    
    public static double getUltimaGrade(){
        return quiz.ultmaGrade;
    }
    
    public static double getGradeMedia(){
        return quiz.testesGradeSum/ (double) quiz.testesCont;
    }
}