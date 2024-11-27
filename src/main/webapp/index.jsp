<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Numeros Primos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid d-flex justify-content-center align-items-control">
    <div class="row d-flex justify-content-center align-items-control">
        <div class="col-md-12 ">
            <h1>Numeros Primos JSP</h1>
            <form action="ProcesarFormulario.jsp" method="post" >
                <div class="mb-3">
                    <label for="rango" class="form-label">Ingrese el rango</label>
                    <div>
                        <input type="number" class="form-control" name="rango" id="rango" placeholder="2-100">
                    </div>
                </div>
                <div class="mb-3 text-center">
                    <button type="submit"  class="btn btn-primary">Calcular</button>
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>