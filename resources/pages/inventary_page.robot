*** Settings ***
Resource    ../main.robot


*** Variables ***
&{INVENTORY}
# Elementos da pagina de login
...                                 productText=//span[@class='title'][contains(.,'Products')]


*** Keywords ***
Então eu devo ver a tela de inventário
    Wait Until Element Is Visible    ${INVENTORY.productText}    5
    Element Should Be Visible    ${INVENTORY.productText}
