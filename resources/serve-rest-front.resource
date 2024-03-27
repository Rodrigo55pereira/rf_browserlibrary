*** Settings ***

Library     Browser


*** Variables ***
${BROWSER}            chromium
${HEADLESS}           ${false}
${SITE_SERVE_REST}    https://front.serverest.dev/


*** Keywords ***
Abrir o navegador
    New Browser    browser=${BROWSER}
    ...            headless=${HEADLESS}

    New Context    viewport={'width':1200, 'height':800}
    

Ir para o site Serve Rest Front
    New Page       url=${SITE_SERVE_REST}


Preencher os dados do novo usuário e cadastrar
    Click         css=.btn-link
    Sleep         5s
