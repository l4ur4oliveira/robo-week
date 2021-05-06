* Settings *

Documentation     Arquivo base do projeto

Library           Browser

Resource          actions/search.robot

* Keywords *

Start Session
  New Browser   chromium
  New Page      http://parodifood.qaninja.academy/
  Get Text      css=span        contains    Nunca foi tão engraçado pedir comida    # ---Checkpoint