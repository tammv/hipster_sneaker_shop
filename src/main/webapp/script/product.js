var quickViewLinks = document.querySelectorAll('.js-show-modal1');
var jsmodal1 = document.querySelector('.js-modal1');
for (var i = 0; i < quickViewLinks.length; i++) {
  quickViewLinks[i].addEventListener('click', function(event) {
    
<<<<<<< HEAD
    console.log("hellooo");
=======
>>>>>>> main
    var clickedLink = event.target; 
    var block2Div = clickedLink.closest('.block2'); 

    var product_id = block2Div.querySelector('.productid').textContent;
    var productName = block2Div.querySelector('.js-name-b2').textContent;
    var productPrice = block2Div.querySelector('.stext-105').textContent;
    var productImg = block2Div.querySelector('img').getAttribute('src');
    var prodductDes = block2Div.querySelector('.description_product').textContent;

  
    var name = jsmodal1.querySelector('.js-name-detail');
    var price = jsmodal1.querySelector('.mtext-106');
    var des = jsmodal1.querySelector('.stext-102');
    var img = jsmodal1.querySelector('.prouct_img');
    var expand = jsmodal1.querySelector('.expand_img');
    var link = jsmodal1.querySelector('.js-addcart-detail');

    name.textContent = productName;
    price.textContent = '$' + productPrice;
    des.textContent = prodductDes;
    img.src = productImg;
    expand.href = productImg;
    link.href = "addToCart?product_id="+product_id;
    
  });
}

var list_item = document.querySelectorAll('.total');
var total = document.querySelector('.header-cart-total');
var s = 0;

for (var i = 0; i < list_item.length; i++) {
  s = s + parseFloat(list_item[i].textContent);
}

<<<<<<< HEAD
total.textContent = "Total: $" + s.toFixed(2);
=======
total.textContent = "Total: $" + s.toFixed(1);
>>>>>>> main
