package api;

import com.intuit.karate.junit5.Karate;

class UsuariosRunner {

    @Karate.Test
    Karate testUsers() {
        // Busca en src/test/resources/api/usuarios.feature
        return Karate.run("classpath:api/usuarios.feature");
    }
}