package br.ufc.npi.gal.web;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.ufc.npi.gal.service.CalculoMetaService;
import br.ufc.npi.gal.service.ResultadoCalculo;

@Controller
@RequestMapping("meta")
public class MetaController {

	@Inject
	private CalculoMetaService calculo;

	private List<ResultadoCalculo> resultados;

	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public String listar(ModelMap modelMap) {
		resultados = calculo.gerarCalculo();
		modelMap.addAttribute("resultados", resultados);
		return "meta/listar";
	}

	@RequestMapping(value = "/{id}/detalhe", method = RequestMethod.GET)
	public String tituloByDetalhe(@PathVariable("id") Integer id,
			ModelMap modelMap, RedirectAttributes redirectAttributes) {

		for (ResultadoCalculo r : resultados) {

			if (r.getTitulo().getId().equals(id)) {
				if (r.getMetaCalculada().getCalculo() > 0.1) {
					modelMap.addAttribute("metaCalculada", r.getMetaCalculada());

					return "meta/detalhe";
				}

			}

		}
		redirectAttributes.addFlashAttribute("info",
				"Esse titulo não possui meta.");
		return "redirect:/meta/listar";

	}

	public CalculoMetaService getCalculo() {
		return calculo;
	}

	public void setCalculo(CalculoMetaService calculo) {
		this.calculo = calculo;
	}

	public List<ResultadoCalculo> getResultados() {
		return resultados;
	}

	public void setResultados(List<ResultadoCalculo> resultados) {
		this.resultados = resultados;
	}

}
