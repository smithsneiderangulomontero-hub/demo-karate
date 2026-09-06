function fn() {
  var env = karate.env; // valor pasado con -Dkarate.env=dev
  karate.log("karate.env system property was:", env);

  if (!env) {
    env = "dev"; // entorno por defecto si no se especifica
  }

  var config = {
    env: env,
  };

  if (env == "dev") {
    config.baseUrl = "http://localhost:8089";
    config.username = "dev_user";
    config.password = "dev_pass";
  } else if (env == "qa") {
    config.baseUrl = "https://qa.miapi.com";
    config.username = "qa_user";
    config.password = "qa_pass";
  } else {
    karate.log("WARNING: unknown karate.env ->", env);
  }

  // timeouts globales, útiles en CI
  karate.configure("connectTimeout", 5000);
  karate.configure("readTimeout", 5000);

  return config;
}
