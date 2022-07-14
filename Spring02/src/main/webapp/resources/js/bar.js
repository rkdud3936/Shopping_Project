/**
 * 
 */
 const toggleBtn = document.querySelector('.navbar_toogleBtn');
 const menu = document.querySelector('.navbar_menu');
 const right = document.querySelector('.navbar_right');
 
 toggleBtn.addEventListener('click', () => {
 	menu.classList.toggle('active');
 	right.classList.toggle('active');
 });
 
