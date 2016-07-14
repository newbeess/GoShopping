var slideIndex = 0;
// 页面加载完成后，再执行JS函数
window.onload = function () {
    carousel();
}
function carousel() {
    // 获取 待滚动的图片
    var x = document.getElementsByClassName("mySlides");
    // 将所有图片设置为不显示
    for (var i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    // 检查范围
    if (slideIndex >= x.length) {
        slideIndex = 0;
    }
    // 显示图片
    x[slideIndex].style.display = "block";
    slideIndex++;
    setTimeout(carousel, 2000); // Change image every 2 seconds
}