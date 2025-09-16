function updateColorPreview() {
  const colorPicker = document.getElementById('color_picker');
  const colorPreview = document.getElementById('color_preview');
  const colorCodeText = document.getElementById('color_code_text');
  
  const selectedColor = colorPicker.value;
  colorPreview.style.backgroundColor = selectedColor;
  colorCodeText.textContent = selectedColor;
}
