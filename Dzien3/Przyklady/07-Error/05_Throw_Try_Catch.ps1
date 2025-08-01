try {
    throw "Rzucam wyjątek ręcznie."
} catch {
    Write-Warning "Złapany wyjątek: $_"
}