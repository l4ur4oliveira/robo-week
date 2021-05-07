* Settings *

Resource          ${EXECDIR}/resources/base.robot

Test Setup        Start Session
Test Teardown     Take Screenshot

* Test Cases *

Deve adicionar um item ao carrinho

  &{restaurant}     Create Dictionary     restaurant=STARBUGS COFFEE    desc=Nada melhor que um café pra te ajudar a resolver um bug.

  Go To Restaurants
  Choose Restaurant             ${restaurant}
  Add To Cart                   Starbugs 500 error
  Should Exist In The Cart      Starbugs 500 error
  Total Cart Should be          15,60

Deve adicionar três itens ao carrinho

  ${cart_json}      Get JSON      cart.json

  Go To Restaurants
  Choose Restaurant             ${cart_json}

  FOR   ${product}    IN    @{cart_json["products"]}
    Add To Cart                 ${product["name"]}
    Should Exist In The Cart    ${product["name"]}
  END

  Total Cart Should be      ${cart_json["total"]}