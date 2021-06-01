window.addEventListener('load', () => {
  
  const top = document.getElementById("target");
  
  top.addEventListener("onmouseenter", () => {
    const inputValue = priceInput.value;
    
    const feeInput = document.getElementById("add-tax-price");
    
    feeInput.innerHTML = (Math.floor(inputValue * 0.1));
    const profitInput = document.getElementById("profit");

    profitInput.innerHTML = (Math.floor(inputValue * 0.9));
  })
});