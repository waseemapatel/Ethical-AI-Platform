$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8080/")
$listener.Start()
Write-Host "Listening on http://localhost:8080/"

# Serve requests in a loop
while ($listener.IsListening) {
    $context = $listener.GetContext()
    $response = $context.Response
    $request = $context.Request

    $file = "c:\Users\patel\Desktop\EthicalAI-Project\demo.html"
    if (Test-Path $file) {
        $content = [System.IO.File]::ReadAllBytes($file)
        $response.ContentType = "text/html"
        $response.ContentLength64 = $content.Length
        $response.OutputStream.Write($content, 0, $content.Length)
    } else {
        $response.StatusCode = 404
    }
    $response.Close()
}
