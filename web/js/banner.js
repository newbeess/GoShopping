var slideIndex = 0;
carousel();
function carousel() {
 // 获取 待滚动的图片
 var x = document.getElementsByClassName("mySlides");
 // 将所有图片设置为不显示
 for ( var i = 0; i < x.length; i++) {
  x[i].style.display = "none";
 }
 // 如果超出范围，从第一张开始
 slideIndex++;
 if (slideIndex > x.length) {slideIndex = 1}
 // 检查范围，显示图片
 if(slideIndex>=1 && slideIndex <= x.length){
  x[slideIndex-1].style.display = "inline";
 }
 setTimeout(carousel, 2000); // Change image every 2 seconds
}