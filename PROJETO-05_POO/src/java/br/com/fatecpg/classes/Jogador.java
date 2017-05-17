package br.com.fatecpg.classes;

public class Jogador {
    private String nome;
    private double mediaPontos;
    private double maiorPontuacao;
    private double totalPontos;
    private int numJogadas;
    
    public Jogador(){
        numJogadas=0;
    }
    public Jogador(String nome, double mediaPontos, double maiorPontuacao, double totalPontos){
        this.nome=nome;
        this.maiorPontuacao=maiorPontuacao;
        this.mediaPontos=mediaPontos;
        this.totalPontos=totalPontos;
    }
    
    public void setJogador(String nome, double mediaPontos, double maiorPontuacao){
        this.nome=nome;
        this.mediaPontos=mediaPontos;
        this.maiorPontuacao=maiorPontuacao;
        this.numJogadas++;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getMediaPontos() {
        return mediaPontos;
    }

    public void setMediaPontos(double mediaPontos) {
        this.mediaPontos = mediaPontos;
    }

    public double getMaiorPontuacao() {
        return maiorPontuacao;
    }

    public void setMaiorPontuacao(double maiorPontuacao) {
        this.maiorPontuacao = maiorPontuacao;
    }
    
    public double getTotalPontos() {
        return totalPontos;
    }

    public void setTotalPontos(double totalPontos) {
        this.totalPontos+=totalPontos;
    }

    public int getNumJogadas() {
        return numJogadas;
    }

    public void setNumJogadas() {
        this.numJogadas++;
    }
}
