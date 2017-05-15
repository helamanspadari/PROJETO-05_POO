package br.com.fatecpg.classes;
import  java.util.Collections;
import java.lang.Comparable;
public class Question {
    private String pergunta;
    private String resposta;
    private String[] alternativas;
    
    public Question(String pergunta, String resposta, String[] alternativas){
        this.pergunta = pergunta;
        this.resposta = resposta;
        this.alternativas = alternativas;
    }

    public String getPergunta() {
        return pergunta;
    }

    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }

    public String getResposta() {
        return resposta;
    }

    public void setResposta(String resposta) {
        this.resposta = resposta;
    }

    public String[] getAlternativas() {
        return alternativas;
    }

    public void setAlternativas(String[] alternativas) {
        this.alternativas = alternativas;
    }
    
}
