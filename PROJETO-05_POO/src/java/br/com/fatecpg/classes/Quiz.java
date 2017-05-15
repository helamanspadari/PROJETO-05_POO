package br.com.fatecpg.classes;
import java.util.ArrayList;
public class Quiz {
    private static int testesCont = 0;
    private static double testesGradeSum = 0.0;
    private static double ultmaGrade = 0.0;
    private static ArrayList<Question> teste;
    
    public static ArrayList<Question> getTeste(){
        if(teste == null){
            teste = new ArrayList<>();
            Question q1 = new Question
            ("1+1?", "2", new String[]{"0","2","1"});
            teste.add(q1);
            Question q2 = new Question
            ("1+2?", "3", new String[]{"0","2","3"});
            teste.add(q2);
            Question q3 = new Question
            ("mario ou maria?", "mario", new String[] {"mario", "maria"});
            teste.add(q3);
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
        Quiz.ultmaGrade = grade;
        Quiz.testesGradeSum += grade;
        Quiz.testesCont++;
        
        return grade;
    }
    
    public static double getUltimaGrade(){
        return Quiz.ultmaGrade;
    }
    
    public static double getGradeMedia(){
        return Quiz.testesGradeSum/ (double) Quiz.testesCont;
    }
}
