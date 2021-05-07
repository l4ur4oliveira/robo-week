* Settings *

Documentation     Ações da funcionalidade de carrinho de compras

* Keywords *

Add To Cart
  [Arguments]     ${name}

  Click           xpath=//span[text()="${name}"]/..//a[@class="add-to-cart"]

Should Exist In The Cart
  [Arguments]     ${name}

  Wait For Elements State     css=#cart tr >> text=${name}      visible     5

Total Cart Should be
  [Arguments]     ${total}

  Log             ${total}
  Get Text        xpath=//th[contains(text(),"Total")]/..//td     contains      ${total}