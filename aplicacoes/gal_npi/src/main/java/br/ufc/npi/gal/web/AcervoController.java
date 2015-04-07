package br.ufc.npi.gal.web;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import br.ufc.npi.gal.model.Exemplar;
import br.ufc.npi.gal.model.Titulo;
import br.ufc.npi.gal.service.AcervoService;

@Controller
@RequestMapping("acervo")
public class AcervoController {

	@Inject
	private AcervoService acervoService;

	@RequestMapping(value = "/atualizar_acervo", method = RequestMethod.GET)
	public String atualizarAcervo(ModelMap modelMap) {
		return "acervo/atualizar";
	}
	
	@RequestMapping(value = "/resolver_conflitos", method = RequestMethod.GET)
	public String resolverConflitos(ModelMap modelMap) {
		Exemplar e = new Exemplar();
		e.setId(1);
		e.setTitulo(new Titulo("titulo", "sdfasdfas", "fisico"));
		e.setCodigoExemplar("lalala");
		ArrayList<Exemplar> aux = new ArrayList<Exemplar>();
		aux.add(e);
		modelMap.addAttribute("exemplares", aux);
		return "acervo/conflitos";
	}

	@RequestMapping(value = "upload", method = RequestMethod.POST)
	public String uploadDoArquivoXls(HttpServletRequest request) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		MultipartFile multipartFile = multipartRequest.getFile("file");
		acervoService.analisarArquivo(multipartFile);
		return null;

	}
}
