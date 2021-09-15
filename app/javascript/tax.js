function tax() {
  const itemPrice  = document.getElementById("item-price");
  itemPrice.addEventListener("keyup", () => {
    const price = Math.floor(itemPrice.value* 0.1);
    const addTaxPrice = document.getElementById("add-tax-price");
    addTaxPrice.innerHTML = `${price}`
    const reword = itemPrice.value - price
    const profit = document.getElementById("profit")
    profit.innerHTML = `${reword}`
  });
};

window.addEventListener('load', tax);