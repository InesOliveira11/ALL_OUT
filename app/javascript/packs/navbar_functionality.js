//init feather icons
const navbarFunctionality = () => {
  feather.replace();

  let menuItem = document.querySelectorAll(".menu-item");
  let wrapper = document.querySelector("#wrapper");

  menuItem.addEventListener('click', () => {
    let activeClass = this.data("color");
    wrapper.removeClass();
    wrapper.addClass(activeClass);
    menuItem.addClass("inactive");
    this.removeClass("inactive");
  });
}

export { navbarFunctionality }
;
