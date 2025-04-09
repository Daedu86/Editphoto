Add-Type -AssemblyName System.Drawing

# Ruta de la imagen de entrada y salida
$imagePath = "C:\Users\Daniel\Pictures\Camera Roll\WIN_20240626_16_08_30_Pro.jpg"      # Ruta de tu imagen original
$outputPath = "C:\Users\Daniel\Desktop\imagen_modificada.jpg"  # Ruta de salida en el escritorio

# Cargar la imagen
$image = [System.Drawing.Image]::FromFile($imagePath)
$bitmap = New-Object System.Drawing.Bitmap $image

# Aplicar filtro para aumentar la saturación y el contraste
for ($x = 0; $x -lt $bitmap.Width; $x++) {
    for ($y = 0; $y -lt $bitmap.Height; $y++) {
        $pixelColor = $bitmap.GetPixel($x, $y)

        # Ajustar la saturación aumentando los componentes RGB
        $newR = [Math]::Min(255, $pixelColor.R + 50)
        $newG = [Math]::Min(255, $pixelColor.G + 50)
        $newB = [Math]::Min(255, $pixelColor.B + 50)

        # Ajustar el contraste ajustando los componentes RGB
        $newR = [Math]::Max(0, [Math]::Min(255, ($newR - 128) * 1.5 + 128))
        $newG = [Math]::Max(0, [Math]::Min(255, ($newG - 128) * 1.5 + 128))
        $newB = [Math]::Max(0, [Math]::Min(255, ($newB - 128) * 1.5 + 128))

        # Crear un nuevo color ajustado
        $newColor = [System.Drawing.Color]::FromArgb($newR, $newG, $newB)

        # Aplicar el nuevo color al píxel
        $bitmap.SetPixel($x, $y, $newColor)
    }
}

# Guardar la imagen modificada en el escritorio
$bitmap.Save($outputPath, [System.Drawing.Imaging.ImageFormat]::Jpeg)

# Liberar recursos
$image.Dispose()
$bitmap.Dispose()

Write-Output "Imagen modificada guardada en: $outputPath"
