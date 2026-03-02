package api;

import com.intuit.karate.junit5.Karate;

class UsuariosRunner {

    @Karate.Test
    Karate testUsers() {
        // Ejecuta el feature y fuerza la generación de reportes HTML
        return Karate.run("classpath:api/usuarios.feature")
                .outputHtmlReport(true) // <--- ESTO ES CLAVE
                .outputCucumberJson(true); // Opcional, pero recomendado
    }
}