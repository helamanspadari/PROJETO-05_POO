package br.com.fatecpg.classes;
import java.util.ArrayList;
import java.util.Collections;
import java.lang.Comparable;
import java.util.HashMap;
import java.util.Map;
public class Quiz {
    private int testesCont = 0;
    private double testesGradeSum = 0;
    private double ultmaGrade = 0;
    private static ArrayList<Question> teste;
    private static HashMap<String, ArrayList<String>> hash;
    
    public static ArrayList<Question> getTeste(){
        if(teste == null){
            teste = new ArrayList<>();
            Question q1 = new Question
            ("Qual o nome do autor, cujo poema inspirou a criação de Morte e Vida Severina, o segundo álbum de Chico Buarque?", "João Cabral de Melo Neto", new String[]{"Miguel Arraiz","Antonio Vieira","Venancio Reis","João Cabral de Melo Neto"});
            teste.add(q1);
            Question q2 = new Question
            ("Qual o nome do programa que Chico Buarque e Caetano Veloso apresentaram na Rede Globo por volta de 1980?", "Chico & Caetano", new String[]{"Chico & Caetano","Buarque e Veloso","MBP Classics","Originais da Bahia"});
            teste.add(q2);
            Question q3 = new Question
            ("Quem escolheu o nome de Maria Bethânia?", "O irmão", new String[] {"O pai","A mãe","O irmão","A avó"});
            teste.add(q3);
            Question q4 = new Question
            ("Por quantos anos Chico Buarque foi casado com a atriz Marieta Severo?", "27", new String[] {"20","27","23","29"});
            teste.add(q4);
            Question q5 = new Question
            ("Quem compôs o hit London London interpretado pela banda RPM?", "Caetano Veloso", new String[] {"Chico Buarque","Caetano Veloso","Paulo Ricardo","Hebert Viana"});
            teste.add(q5);
            Question q6 = new Question
            ("Qual o nome da banda em que Tim Maia e Roberto Carlos cantaram juntos?", "The Sputniks", new String[] {"Cometa Harley","Calhambeque","The Sputniks","Soul Brothers"});
            teste.add(q6);
            Question q7 = new Question
            ("Quem ajudou Elis Regina a apresentar o programa Dois na Bossa, exibido pela Rede Record em 1960?", "Jair Rodrigues", new String[] {"Jair Rodrigues","Raul Gil","Belchior","Morais Moreira"});
            teste.add(q7);
            Question q8 = new Question
            ("Quem foi a primeira cantora brasileira a vender um milhão de cópias?", "Maria Bethânia", new String[] {"Elba Ramalho","Daniela Mercury","Maria Bethânia","Ana Carolina"});
            teste.add(q8);
            Question q9 = new Question
            ("Quem foi o cantor brasileiro que vendeu mais discos em todo o mundo?", "Roberto Carlos", new String[] {"Roberto Carlos","Seu Jorge","Zeca Pagodinho","Arlindo Cruz"});
            teste.add(q9);
            Question q10 = new Question
            ("Quem deu o título de rei a Roberto Carlos?", "Chacrinha", new String[] {"Raul Gil","Silvio Santos","Chacrinha","Cid Moreira"});
            teste.add(q10);
            Question q11 = new Question
            ("Ney Matogrosso já teve como profisão:", "Polícia da Aeronáutica", new String[] {"Entregador de pizza","Pintor","Mecânico","Polícia da Aeronáutica"});
            teste.add(q11);
            Question q12 = new Question
            ("Ivete Sangalo já teve como profisão:", "Vendedora de marmita", new String[] {"Diarista","Vendedora de marmita","Balconista","Secretária"});
            teste.add(q12);
            Question q13 = new Question
            ("Marcelo D2 já teve como profisão:", "Porteiro", new String[] {"Funcionário Publico","Porteiro","Motoboy","Zelador"});
            teste.add(q13);
            Question q14 = new Question
            ("Quem foi a única brasileira a se apresentar em todas as edições do Rock in Rio Lisboa?", "Ivete Sangalo", new String[] {"Ivete Sangalo","Claudia Leite","Vanessa Camargo","Sandy"});
            teste.add(q14);
            Question q15 = new Question
            ("Quantas vezes Ivete Sangalo foi indicada ao Grammy?", "15", new String[] {"12","5","15","14"});
            teste.add(q15);
            Question q16 = new Question
            ("Em torno de quantas músicas Chiquinha Gonzaga compôs durante sua carreira?", "2000", new String[] {"500","1000","1500","2000"});
            teste.add(q16);
            Question q17 = new Question
            ("Com quantos anos Gilberto Gil aprendeu a tocar acordeom?", "9", new String[] {"6","7","8","9"});
            teste.add(q17);
            Question q18 = new Question
            ("Qual era o lugar preferido por Vinicius de Moraes em sua casa?", "O banheiro", new String[] {"A sala","A sacada","O quarto","O banheiro"});
            teste.add(q18);
            Question q19 = new Question
            ("Qual a posição no ranking muldial garota de ipanema ocupa como música mais tocada?", "10ª", new String[] {"10ª","9ª","12ª","6ª"});
            teste.add(q19);
            Question q20 = new Question
            ("Qual era o apelido de infância de Raul Seixas?", "Raulzito", new String[] {"Maluquinho","Raulzito","Pluft","Ra"});
            teste.add(q20);
        }
        return teste;
    }
    public double validarTeste(String userRespostas[]){
        int cont = 0;
        for(int i=0; i<teste.size(); i++){
            if(teste.get(i).getResposta().equals(userRespostas[i])){
                cont++;
            }
        }
        double grade = (double)cont / (double)teste.size();
        this.ultmaGrade = grade;
        this.testesGradeSum += grade;
        this.testesCont++;
        
        return grade;
    }
    public void adicionarJogador(String nome){
        if(hash == null){
            hash = new HashMap<String, ArrayList<String>>();
        }
        ArrayList<String> lst = new ArrayList<String>();
        lst.add(String.valueOf(getUltimaGrade()));
        lst.add(String.valueOf(getGradeMedia()));
        hash.put(nome, lst);
    }
    
    public double getUltimaGrade(){
        return this.ultmaGrade;
    }
    
    public double getGradeMedia(){
        return this.testesGradeSum/ (double) this.testesCont;
    }
}