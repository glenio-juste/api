package med.voll.api.controller;

import jakarta.transaction.Transactional;
import jakarta.validation.Valid;
import med.voll.api.medico.DadosCadastroMedico;
import med.voll.api.medico.Medico;
import med.voll.api.medico.MedicoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/medicos")
public class MedicoController {

    @Autowired
    private MedicoRepository repository;

    @PostMapping
    @Transactional
    public void cadastrar (@RequestBody @Valid DadosCadastroMedico dados){

        repository.save(new Medico(dados));
    }

    @GetMapping
    public List<Medico> getAll() {
        return repository.findAll();
    }

    @GetMapping("/{id}")
    public Optional<Medico> getIDMedico(@PathVariable Long id) {
        return Optional.ofNullable(repository.findById(id).orElse(null));
    }


}
