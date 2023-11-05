[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Rekapitulace registrace</title>
    <link rel="stylesheet" href="/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="mt-3 ms-4">
    <h4>Registrace proběhla úspěšně.</h4>

    <div class="mt-5 mb-2 fw-bold">Vaše zadané údaje:</div>

    <form>
        <div class="row mb-3">
            <label for="jmeno" class="col-sm-2 col-form-label">Jméno</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" id="jmeno" value="${form.jmeno}">
            </div>
        </div>
        <div class="row mb-3">
            <label for="prijmeni" class="col-sm-2 col-form-label">Příjmení</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" id="prijmeni" value="${form.prijmeni}">
            </div>
        </div>
        <div class="row mb-3">
            <label for="datumNarozeni" class="col-sm-2 col-form-label">Datum narození</label>
            <div class="col-sm-7">
                <input class="form-control" id="datumNarozeni" value="${form.datumNarozeni.format('LONG_DATE')}">
            </div>
        </div>
        <div class="row mb-3">
            <label for="pohlavi" class="col-sm-2 col-form-label">Pohlaví</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" id="pohlavi" value="${form.pohlavi}">
            </div>
        </div>
        <div class="row mb-3">
            <label for="turnus" class="col-sm-2 col-form-label">Turnus</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" id="turnus" value="${form.turnus}">
            </div>
        </div>
        <div class="row mb-3">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" id="email" value="${form.email}">
            </div>
        </div>
        <div class="row mb-3">
            <label for="telefon" class="col-sm-2 col-form-label">Telefon</label>
            <div class="col-sm-7">
                <input type="text" class="form-control" id="telefon" value="${form.telefon}">
            </div>
        </div>
    </form>
</div>
</body>
</html>