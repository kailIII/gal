package br.ufc.npi.gal.service;

import java.util.List;

import br.ufc.npi.gal.model.EstruturaCurricular;

public interface EstruturaCurricularService {
	
	public void inserir(EstruturaCurricular estruturaCurricular);
	
	public List<EstruturaCurricular> listar();
}