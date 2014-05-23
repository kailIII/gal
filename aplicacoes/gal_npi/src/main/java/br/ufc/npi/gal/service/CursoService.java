package br.ufc.npi.gal.service;

import java.util.List;

import br.ufc.npi.gal.model.Curso;


public interface CursoService {
    
	public void adicionar(Curso curso);
	
	public void atualizar(Curso curso);
	
	public void excluir(String codigo);
	
    public List<Curso> listar();
    
    public Curso findByCodigo(String codigo);

    public Curso buscar(String sigla, String codigo);
    
    public abstract List<Curso> findByCodigoList(String codigo);

}