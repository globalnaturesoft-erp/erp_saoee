const menuBar = document.querySelector(".header__menu-icon")
const navBar = document.querySelector(".navbar")

menuBar.addEventListener("click", function() {
    this.querySelector(".fa-solid.fa-bars").classList.toggle("d-none");
    this.querySelector(".fa-solid.fa-xmark").classList.toggle("d-none");
    navBar.classList.toggle("d-block");
})