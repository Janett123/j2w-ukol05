[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<main>
    <h1>Registrace na letní dětský tábor</h1>
    <form class="row g-3" action="/" method="post">
        <div class="col-md-6">
            <label for="jmeno" class="form-label">Jméno</label>
            <div>
                [@spring.formInput path="form.jmeno" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>
        <div class="col-md-6">
            <label for="prijmeni" class="form-label">Příjmení</label>
            <div>
                [@spring.formInput path="form.prijmeni" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>
        <div class="col-md-6">
            <label for="datumNarozeni" class="form-label">Datum narození (ve formátu dd.mm.yy)</label>
            <div>
                [@spring.formInput path="form.datumNarozeni" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>
        <div class="col-md-6">
            <label for="pohlavi" class="form-label">Pohlaví</label>
            <div>
                [@spring.formSingleSelect path="form.pohlavi" options={
                "muz":"muž",
                "zena":"žena"
                }/]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>
        <div class="col-12">
            <label for="turnus" class="form-label">Turnus</label>
            <div>
                [@spring.formSingleSelect path="form.turnus" options={
                "turnus 1":"5. až 11. července 2024",
                "turnus 2":"12. až 18. července 2024",
                "turnus 3":"19. až 25. července 2024"
                }/]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>
        <div class="col-md-6">
            <label for="email" class="form-label">Email na rodiče</label>
            <div>
                [@spring.formInput path="form.email" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>
        <div class="col-md-6">
            <label for="telefon" class="form-label">Telefon na rodiče</label>
            <div>
                [@spring.formInput path="form.telefon" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>

        <div class="radek controls">
            <button type="submit">Registrovat</button>
        </div>
    </form>
</main>
</body>
</html>
