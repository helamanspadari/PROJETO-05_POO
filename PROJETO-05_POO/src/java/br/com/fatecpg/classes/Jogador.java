package br.com.fatecpg.classes;

public class Jogador {
    private String nome;
    private double mediaPontos;
    private double maiorPontuacao;
    private int numJogadas;
    
    public Jogador(){
        numJogadas=0;
    }
    
    public void getJogador(String nome, double mediaPontos, double maiorPontuacao){
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
    
    
}
