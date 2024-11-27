<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados Números Primos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<header class="bg-primary text-white text-center py-3">
    <h1>Resultados Números Primos</h1>
</header>

<main class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <%
                // Obtener el límite superior desde el formulario
                String rangoStr = request.getParameter("rango");
                if (rangoStr != null && !rangoStr.isEmpty()) {
                    try {
                        int limiteSuperior = Integer.parseInt(rangoStr);

                        // Validar el rango (debe ser mayor o igual a 2)
                        if (limiteSuperior < 2) {
                            out.println("<div class='alert alert-danger'>El rango debe ser mayor o igual a 2.</div>");
                        } else if (limiteSuperior > 100) {
                            out.println("<div class='alert alert-warning'>El rango no debe ser mayor a 100.</div>");
                        } else {
                            out.println("<p class='fw-bold'>Números primos desde 1 hasta " + limiteSuperior + ":</p>");
                            out.println("<ul class='list-group'>");

                            // Calcular y mostrar números primos con un bucle for
                            for (int i = 2; i <= limiteSuperior; i++) {
                                boolean esPrimo = true;
                                for (int j = 2; j <= Math.sqrt(i); j++) {
                                    if (i % j == 0) {
                                        esPrimo = false;
                                        break;
                                    }
                                }
                                if (esPrimo) {
                                    out.println("<li class='list-group-item'>" + i + "</li>");
                                }
                            }

                            out.println("</ul>");
                        }
                    } catch (NumberFormatException e) {
                        out.println("<div class='alert alert-danger'>Ingrese un número válido como límite superior.</div>");
                    }
                } else {
                    out.println("<div class='alert alert-danger'>Debe ingresar un rango válido.</div>");
                }
            %>
            <a href="index.jsp" class="btn btn-primary mt-3">Ir a inicio</a>
        </div>
    </div>
</main>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
