package med.voll.api.domain.paciente;

import jakarta.validation.constraints.NotNull;
import med.voll.api.domain.endereco.DadosEndereco;

public record DadosAtuazacaoPaciente(
        @NotNull
        Long id,

        String nome,

        String email,

        String telefone,

        DadosEndereco endereco) {
}
