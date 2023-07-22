<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>

<!-- Cart -->
<div class="wrap-header-cart js-panel-cart">
    <div class="s-full js-hide-cart"></div>

    <div class="header-cart flex-col-l p-l-65 p-r-25">
      <div class="header-cart-title flex-w flex-sb-m p-b-8">
        <span class="mtext-103 cl2"> Your Cart </span>

        <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
          <i class="zmdi zmdi-close"></i>
        </div>
      </div>

      <div class="header-cart-content flex-w js-pscroll">
        <ul class="header-cart-wrapitem w-full">
          <c:forEach items="${sessionScope.cart_user.list_product}"  var="product_cart">
            <li class="header-cart-item flex-w flex-t m-b-12">
              <div class="header-cart-item-img">
                <img src="${product_cart.product.img}" alt="IMG" />
              </div>

              <div class="header-cart-item-txt p-t-8">
                <a href="#" class="header-cart-item-name m-b-18 hov-cl1 trans-04"> ${product_cart.product.product_name} </a>

                <span class="header-cart-item-info"> ${product_cart.quantity} x  ${product_cart.product.profit_price} $ </span>
                <span class="header-cart-item-info"> Size : ${product_cart.size} </span>
                <c:set var="total" value="${product_cart.quantity  * product_cart.product.profit_price}"/>
                <span class="header-cart-item-info total d-none">${total}</span>
              </div>
              <div class="header-cart-item-trash">
                <a href="deleteInCart?product_id=${product_cart.product.product_id}&size=${product_cart.size}"><i class="fa-sharp fa-solid fa-trash"></i></a>
              </div>
            </li>
          </c:forEach>


        </ul>

        <div class="w-full">
          <div class="header-cart-total w-full p-tb-40"></div>

          <div class="header-cart-buttons flex-w w-full">
            <a
              href="shoping-cart.jsp"
              class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10"
            >
              View Cart
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
