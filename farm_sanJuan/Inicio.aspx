<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="farm_sanJuan.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="estilos/Style.css" rel="stylesheet" />
    <!-- Link a Font Awesome para los íconos -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <title>INICIO</title>
</head>
<body>
    <form id="form1" runat="server">

        <!--BANNER PRINCIPAL-->
        <div class="banner">    
            <!-- Columna izquierda -->
            <div class="banner-left">
                <img src="img/logo.png" alt="Icono de usuario" class="logo">
            </div>   
            <!-- Columna central -->
            <div class="banner-center">
                <h1>Administrador</h1>
            </div>   
            <!-- Columna derecha -->
            <div class="banner-right">
                <h2>JP67361</h2>
                <img src="img/aprobar.png" alt="Icono de usuario" class="icono" id="user-icon"> 
                <div class="user-info" id="user-info">
                    <p>José Pacheco</p>
                    <button onclick="cerrarSesion()">Cerrar sesión</button>
                </div>
            </div>
        </div>

        <!-- Contenedor de contenido principal -->
        <div class="main-container">
            <!-- Barra lateral -->
            <div class="sidebar" id="sidebar">
                <ul class="menu">
                    <li><a href="Inicio.aspx"><i class="fas fa-home"></i> Inicio</a></li>

                    <li>
                        <!--sub menu-->
                        <a href="#" class ="submenu-toggle"><i class="fas fa-cash-register"></i> Ventas</a>
                        <ul class ="submenu">
                            <li><a href="#"> <i class ="fas fa-boxes"></i>Productos</a></li>
                            <li><a href="#"> <i class ="fas fa-users"></i> Clientes</a></li>
                            <li><a href="#"> <i class ="fas fa-file-invoice-dollar"></i>Facturacion</a></li>
                            <li><a href="#"> <i class ="fas fa-file-alt"></i>Reportes</a></li>
                            <li> <a href="#"> <i class="fas fa-chart-line"></i>Historial de Ventas </a></li>
                            <li> <a href="#"> <i class ="fas fa-cash-register"> </i>Caja</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#" class ="submenu-toggle"><i class="fas fa-boxes"></i> Inventario</a>
                        <ul class ="submenu">
                            <li> <a href="#"> <i class ="fas fa-box-open"></i>Productos</a></li>
                            <li> <a href="#"> <i class ="fas fa-clipboard-list"></i>Pedido</a></li>
                            <li> <a href="#"> <i class ="fas fa-shopping-cart"></i>Compras</a></li>
                            <li> <a href="#"> <i class ="fas fa-tags"></i>Categorizacion</a></li>
                            <li> <a href="#"> <i class ="fas fa-truck"></i>Proveedor</a></li>
                            <li> <a href="#"> <i class ="fas fa-warehouse"></i>Kardex</a></li>

                        </ul>

                    </li>
                   
                    <li>
                        <a href="#" class="submenu-toggle"><i class="fas fa-cog"></i> Configuración</a>
                        <ul class="submenu">
                            <li><a href="Usuario.aspx"><i class="fas fa-user"></i> Usuario</a></li>
                            <li><a href="#"><i class="fas fa-user-tie"></i> Empleados</a></li>
                            <li><a href="#"><i class="fas fa-book"></i> Bitácora</a></li>                    
                        </ul>
                    </li>

                    <li><a href="#"><i class="fas fa-question-circle"></i> Ayuda</a></li>
                </ul>
                </div>

                <!-- Botón para ocultar/mostrar barra lateral -->
                <div class="toggle-sidebar">
                    <i class="fas fa-arrow-left" id="toggle-icon"></i>    
            </div>
            
            <!-- Contenido principal -->
           <%-- <div class="content">
              <%--  <h1>BIENVENIDOS</h1>      --%>  
             <%--   < <img src="img/portadaa.png" alt="portada inicio" class="portada" />          
            </div>--%>

             <div class="content">
                  <h1>BIENVENIDOS</h1>     
                  <img src="img/portada23.png" alt="Portada de inicio" class="portada" />
            </div>


        </div>

    </form>

    <script>

        // Obtener todos los elementos con la clase 'submenu-toggle' (botones de submenús)
        var submenuToggles = document.querySelectorAll('.submenu-toggle');

        // Agregar un evento de clic a cada botón de submenú
        submenuToggles.forEach(function (toggle) {
            toggle.addEventListener('click', function (event) {
                event.preventDefault(); // Prevenir el comportamiento predeterminado del enlace

                // Obtener el submenú correspondiente al botón de submenú clicado
                var submenu = this.nextElementSibling; // Seleccionar el siguiente elemento (submenú)
                var isSubmenuVisible = submenu.style.display === 'block'; // Verificar si el submenú ya está visible

                // Ocultar todos los submenús
                var allSubmenus = document.querySelectorAll('.submenu');
                allSubmenus.forEach(function (submenu) {
                    submenu.style.display = 'none';
                });

                // Si el submenú no estaba visible, mostrarlo
                if (!isSubmenuVisible) {
                    submenu.style.display = 'block'; // Mostrar el submenú si estaba oculto
                }
            });
        });


        //// Mostrar/Ocultar submenús
        //document.querySelectorAll('.submenu-toggle').forEach(function (toggle) {
        //    toggle.addEventListener('click', function (event) {
        //        event.preventDefault();
        //        var submenu = this.nextElementSibling;
        //        submenu.style.display = submenu.style.display === 'block' ? 'none' : 'block';
        //    });
        //});


        // Mostrar/Ocultar barra lateral
        document.getElementById('toggle-icon').addEventListener('click', function () {
            var sidebar = document.getElementById('sidebar');
            var icon = document.getElementById('toggle-icon');
            var menu = document.querySelector('.menu');

            if (sidebar.classList.contains('collapsed')) {
                sidebar.classList.remove('collapsed');
                menu.classList.remove('collapsed');
                icon.classList.remove('fa-arrow-right');
                icon.classList.add('fa-arrow-left');
            } else {
                sidebar.classList.add('collapsed');
                menu.classList.add('collapsed');
                icon.classList.remove('fa-arrow-left');
                icon.classList.add('fa-arrow-right');
            }
        });
    </script>

    <script>
        // Mostrar u ocultar el cuadro de información al hacer clic en el ícono
        document.getElementById('user-icon').addEventListener('click', function () {
            var userInfo = document.getElementById('user-info');

            if (userInfo.style.display === 'block') {
                userInfo.style.display = 'none'; // Ocultar el cuadro de información si está visible
            } else {
                userInfo.style.display = 'block'; // Mostrar el cuadro de información si está oculto
            }
        });

        // Función para el botón de cerrar sesión
        function cerrarSesion() {
            // Lógica para cerrar la sesión
            alert('Sesión cerrada');

        }
    </script>
</body>
</html>

