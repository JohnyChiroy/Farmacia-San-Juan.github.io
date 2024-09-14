function login(event) {
    event.preventDefault();  // Evita que la página se recargue

    const Usuario = document.getElementById('Usuario').value;
    const password = document.getElementById('password').value;
    const errorMessage = document.getElementById('error-message');

    // Validación simple de credenciales
    if (Usuario === "batman" && password === "12345") {
        alert("Inicio de sesión exitoso");
        window.location.href = "inicio.aspx";  // Redirigir a otra página después del login
    } else {
        errorMessage.textContent = "Usuario o contraseña incorrectos";
    }
}
