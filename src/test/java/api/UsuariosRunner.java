package api;

import static com.github.tomakehurst.wiremock.core.WireMockConfiguration.options;

import com.github.tomakehurst.wiremock.junit5.WireMockExtension;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.extension.RegisterExtension;

class UsuariosRunner {

    @RegisterExtension
    static WireMockExtension wireMock = WireMockExtension.newInstance()
        .options(options().port(8089).usingFilesUnderClasspath("wiremock"))
        .build();

    @Karate.Test
    Karate testUsuarios() {
        return Karate.run("classpath:api/usuarios.feature").relativeTo(
            getClass()
        );
    }
}
