Algoritmo "JOGO RPG"
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Jogo RPG.
// Autor(a)    : Lucas Mendonça, Rafaela e Marcelo Alexandre.
// Data atual  : 23/06/2022
Var
menu, vida, magia, esc, vidainimigo, ataque, ataquei: inteiro
nome: caracter
inventario: vetor[1..2,1..2] de caracter
procedimento cabana()
inicio
   escreval("_____________________________________________________")
   escreval("|                      *                  #      *  |")
   escreval("|           * ___                        ###      * |")
   escreval("|   *        /=|=\        *             #####  *    |")
   escreval("|    *     /=/=|=\=\            *      #######      |")
   escreval("|        /´=/==|==\=`\   *            #########     |")
   escreval("|         |¨¨__¨¨¨_¨|          *       #######      |")
   escreval("|________ | [__] { }| ___________________|=|________|")
   escreval("|         |      |_||                    |=|        |")
   escreval("|        ¨¨¨¨¨¨¨¨/ \¨                               |")
   escreval("|               /   \                               |")
   escreval("|___________________________________________________|")
fimprocedimento

funcao dadojog(): inteiro
var
   numdado: inteiro
inicio
      numdado <- randi(7)
      retorne numdado
      escolha numdado
              caso 0
                   escreval(nome, " errou o ataque.(0 de dano)")
              caso 1
                   escreval(nome, " atacou de forma precipitada e só causou um arranhão.(", numdado," de dano)")
              caso 2
                   escreval(nome, " atacou de forma precipitada e só causou um arranhão.(", numdado," de dano)")
              caso 3
                   escreval(nome, " acertou o ataque, porém acertou a armadura do inimigo.(", numdado, " de dano)")
              caso 4
                   escreval(nome, " acertou o ataque, porém acertou a armadura do inimigo.(", numdado, " de dano)")
              caso 5
                   escreval(nome, " feriu o inimigo!(5 de dano)")
              caso 6
                   escreval(nome, " feriu gravemente o inimigo(6 de dano)")
              caso 7
                   escreval(nome, " feriu gravemente o inimigo(7 de dano)")
      fimescolha
fimfuncao

funcao dadoinimigo(): inteiro
var
   numdado: inteiro
inicio
      numdado <- randi(8)
      retorne numdado
      escolha numdado
              caso 0
                   escreval("O inimigo errou o ataque.(0 de dano)")
              caso 1
                   escreval("O inimigo ataca. Mas ", nome, " é mais rápido e ele só consegue causar um arranhão(", numdado," de dano)")
              caso 2
                   escreval("O inimigo dá um soco em ", nome, ".(", numdado," de dano)")
              caso 3
                   escreval("O inimigo dá um soco em ", nome, ".(", numdado," de dano)")
              caso 4
                   escreval("O inimigo arremessa ", nome, " longe e a queda o(a) machuca.(", numdado, " de dano)")
              caso 5
                   escreval("O inimigo arremessa ", nome, " longe e a queda o(a) machuca.(", numdado, " de dano)")
              caso 6
                   escreval("O inimigo feriu ", nome, ".(", numdado," de dano)")
              caso 7
                   escreval("O inimigo feriu ", nome, ".(", numdado," de dano)")
              caso 8
                   escreval("O inimigo feriu ", nome, " gravemente(10 de dano)")
      fimescolha
fimfuncao

procedimento menu2()
inicio
      escreval("___________________________________            _______________")
      escreval("|[1]Ataque      VIDA:",vida,"          |            | VIDA INIMIGO|")
      escreval("|[2]Magia(cura) MAGIA:",magia,"         |            | ",vidainimigo,"          |")
      escreval("|[3]Item                          |            |             | ")
      escreval("|                                 |            |             | ")
      escreval("|_________________________________|            |_____________|              ")
fimprocedimento

procedimento menu3()
inicio
      escreval("___________________________________")
      escreval("|[1]",inventario[1,2],"             VIDA:",vida,"    |")
      escreval("|[2]",inventario[2,2],"             MAGIA:",magia,"   |")
      escreval("|                                 |")
      escreval("|_________________________________|")
fimprocedimento

procedimento inimigo()
inicio
      escreval("______________________________________________________")
      escreval("|                 ;            ;                     |")
      escreval("|                 \`.________.´/                     |")
      escreval("|                  \_\ _  _ /_/       /\             |")
      escreval("|                    \ º  º /         \/             |")
      escreval("|                   ´;\    /;`        ||             |")
      escreval("|                _____ {..} _____     ||             |")
      escreval("|              ,/     \    /     \,   ||             |")
      escreval("|             /   /    \||/    \   \  ||             |")
      escreval("|            /___/;     ||      \___\ ||             |")
      escreval("|____________________________________________________|")
      escreval
fimprocedimento

procedimento combate()
inicio
      escreval("UM INIMIGO APARECE!")
      escreval
      repita
            menu2()
            escreval
            leia(esc)
            escreval
            se esc = 1 entao
               ataque <- dadojog()
               escreval(ataque)
               vidainimigo <- vidainimigo - ataque
            fimse
            se esc = 2 entao
               vida <- vida + 10
               se magia > 0 entao
                  magia <- magia - 5
                  escreval(nome," se cura.")
               senao
                    escreval("Magia indisponível. Vez perdida.")
               fimse
            fimse
            se esc = 3 entao
               menu3()
               escreval
               leia(esc)
               escreval
               se esc = 1 entao
                  se inventario[1,2] = "POÇÃO" entao
                     vida <- vida + 5
                     escreval("Item de cura usado.")
                     inventario[1,2] <- "VAZIO"
                  senao
                       escreval("NÃO HÁ ITEM. VEZ PERDIDA.")
                  fimse
               fimse
               se esc = 2 entao
                  se inventario [2,2] = "POÇÃO" entao
                     vida <- vida + 5
                     escreval("Item de cura usado.")
                     inventario[2,2] <- "VAZIO"
                  senao
                       escreval("NÃO HÁ ITEM. VEZ PERDIDA.")
                  fimse
               fimse
            fimse
            ataquei <- dadoinimigo
            escreva(ataquei)
            vida <- vida - ataquei
            escreval
      ate (vidainimigo <= 0) ou (vida <= 0)
      se vidainimigo <= 0 entao
         escreval("inimigo derrotado!")
      fimse
      se vida <= 0 entao
         escreval("GAME OVER.")
         escreval("APERTE QUALQUER BOTÃO PARA FINALIZAR.")
         leia(esc)
      fimse
fimprocedimento

procedimento rio()
inicio
      escreval("Você chegou em um rio e não sabe aonde ele vai. Você vê um barco, mas não tem certeza se é uma")
      escreval("boa opção. Você pega o barco ou segue a pé? [1]barco [2]a pé")
      leia(esc)
      escreval
      limpatela
      //barco
      se esc = 1 entao
         escreval("Você decide ir de barco e embarca nele. No primeiro momento a decida no rio é agradável, mas")
         escreval("a correnteza começa a ficar mais forte e você tem dificuldade de controlar o barco. Depois de conseguir")
         escreval("atravessar a turbulência do rio, você percebe que, dá água surge um monstro, ele embarca.")
         vidainimigo <- 20
         inimigo()
         combate()
         se vidainimigo <= 0 entao
            escreval("Após a luta, você se sente exausto e acaba adormecendo no barco. Quando acorda, você vê o nascer")
            escreval("do sol e o canto dos pássaros e se dá conta de que não estava mais por aquelas terras amaldiçoadas.")
            escreval
            escreval("FIM DE JOGO. OBRIGADO POR JOGAR.")
            escreval("APERTE QUALQUER BOTÃO PARA FINALIZAR.")
            leia(esc)
         fimse
      fimse
      // a pé
      se esc = 2 entao
         escreval("Você decide ir a pé pelas margens do rio. Em determinado ponto, você encontra um estábulo.")
         se inventario[2,1] = "CHAVE" entao
            limpatela
            escreval("Você raciocina e chega a conclusão de que a chave que você obteve era a do estábulo.")
            escreval("Você está certo. Após abrir as porta, você se encontra com um belo cavalo, o desamarra")
            escreval("e cavalga para longe dessas terras amaldiçoadas.")
            escreval
            escreval("_______________________________________________________")
            escreval("|              #####                                  |")
            escreval("|             /o  ###               ;                 |")
            escreval("|            /     ###--,====,-; __/                  |")
            escreval("|           (_ /\      ,__  ,   \                     |")
            escreval("|                |  ;     ´`    |                     |")
            escreval("|               /  / `----´ \  /                      |")
            escreval("|_____________________________________________________|")
            escreval
            escreval("FIM DE JOGO. OBRIGADO POR JOGAR.")
            escreval("APERTE QUALQUER BOTÃO PARA FINALIZAR.")
            leia(esc)
         senao
              escreval("Você não tem a chave para abrir o estábulo e o cansaço não o deixa seguir em frente.")
              escreval("Então você volta e pega o barco.")
              escreval("No primeiro momento a decida no rio é agradável, mas a correnteza começa a ficar mais forte")
              escreval("e você tem dificuldade de controlar o barco. Depois de conseguir atravessar a turbulência")
              escreval("do rio, você percebe que, dá água surge um monstro, ele embarca.")
              vidainimigo <- 20
              inimigo()
              combate()
              se vidainimigo <= 0 entao
                 escreval("Após a luta, você se sente exausto e acaba adormecendo no barco. Quando acorda, você vê o nascer")
                 escreval("do sol e o canto dos pássaros e se dá conta de que não estava mais por aquelas terras amaldiçoadas.")
                 escreval
                 escreval("FIM DE JOGO. OBRIGADO POR JOGAR.")
              fimse
         fimse
      fimse
fimprocedimento

Inicio
   // MENU DE OPÇÕES.
   cabana()

   escreval("                       [1]JOGAR")
   escreval("                       [2]SAIR")
   leia(menu)

   //Criação de personagem.
   se menu = 1 entao
      escreval("--------------CRIAÇÃO DE PERSONAGEM----------------")
      escreval
      escreva("Nome: ")
      leia(nome)
      escreval
      vida <- 50
      magia <- 15
      inventario[1,1] <- "ESPADA"
      escreval("               ", nome,"                 __INVENTÁRIO___")
      escreval("               VIDA: 50            |ESPADA |       |")
      escreval("               MAGIA: 15           |_______|_______|")
      escreval("                                   |       |       |")
      escreval("                                   |_______|_______|")
      escreval
      
      //Introdução da história e explicação de mecânica.
      escreval("__________________________________________________")
      escreval("|Você é um viajante de uma Terra distante. Em uma|")
      escreval("|de suas viagens, você encontra uma pequena casa.|")
      escreval("|Este lugar fica isolado, sem nada ao redor a não|")
      escreval("|ser a natureza. Após entrar na casa,você percebe|")
      escreval("|um homem velho muito ferido. Antes de falecer, o|")
      escreval("|o senhor lhe diz que estas terras portam uma mau|")
      escreval("|terrível e que você deve sair imediatamente. Mas|")
      escreval("|logo depois, você ouve algo se aproximando e se |")
      escreval("|dá conta de que é tarde demais para retornar.Seu|")
      escreval("|objetivo é sobreviver e sair desta região.      |")
      escreval("|ESTE JOGO TRABALHA COM UMA MECÂNICA DE ESCOLHAS,|")
      escreval("|O CAMINHO QUE VOCÊ TOMAR DECIDIRÁ O DESTINO DO  |")
      escreval("|SEU PERSONAGEM. O COMBATE É PELA SORTE, UM DADO |")
      escreval("|SIMULADO DECIDIRÁ A QUANTIDADE DE DANO QUE UM   |")
      escreval("|INIMIGO RECEBERÁ.                               |")
      escreval("|________________________________________________|")
      
      // Primeira escolha.
      escreval("_____________________________________________________________")
      escreval("| _ / _  \_                                                 |")
      escreval("|| `-´ `-´ |                                                |")
      escreval("||;-------:|         |>                         {####}      |")
      escreval("| \|      / ________ |_        [@@]   {####}   {######}     |")
      escreval("|  |= {} |_/\_|_|_|_\| |     [@@@@@@]{######}  {######}     |")
      escreval("|  |=                  |     [@@@@@@]{##||##}   {#||#}      |")
      escreval("|  |=     ;-=-=-=-=-=  |        ||      ||        ||        |")
      escreval("|  |=    | \_=__=__=_\ |        ||         {^^^^}   [ºº] /&&|")
      escreval("|  |=    |           ; |         [####]   {^^^^^^} [ºººº]&&&|")
      escreval("|  |=    |     ,:,   | |        [######] {^^^^^^^^} ººººº]&&|")
      escreval("|  |=    |    ,|||,  | |         [#||#]   {______} [__ _]\__|")
      escreval("|  |=    |    |||||  | |           || / /    ||      ||   |||")
      escreval("|              \   \                 / /     ||      ||   |||")
      escreval("|               \   \               / /                     |")
      escreval("|___________________________________________________________|")
      escreval
      escreval("Você se depara com dois caminhos. Um para um castelo, outro para uma floresta.")
      escreval("Qual você escolhe?:[1] Ir para o castelo. [2] Ir para a floresta.")
      leia(esc)
      escreval
      
      //para o castelo
      se esc = 1 entao
         escreval("Quando você chega no castelo.Você percebe que existe um caminho que contorna a construção.")
         escreval("Você segue o caminho ou continua pela entrada do castelo?:[1] Seguir o caminho. [2]Entrar no castelo.")
         leia(esc)
         // se seguir o caminho.
         limpatela
         se esc = 1 entao
            vidainimigo <- 15
            inimigo()
            combate()
            se vidainimigo <= 0 entao
               escreval("Chave adquirida.")
               inventario[2,1] <- "CHAVE"
               escreval
               escreval("Depois de derrotar o inimigo, você entra pela entrada dos fundos do castelo.")
               vidainimigo <- 15
               inimigo()
               combate()
               se vidainimigo <= 0  entao
                  escreval("Item de cura adquirido.")
                  inventario[2,2] <- "POÇÃO"
                  escreval
                  escreval("Depois de derrotar seu oponente, você segue o único caminho que lhe é apresentado.")
                  escreval("Este caminho o leva para uma ponte, em seguida para uma escadaria, que acaba na saída do castelo.")
                  rio()
               fimse
            fimse
         fimse
         // se entrar no castelo
         limpatela
         se esc = 2 entao
            escreval("Você entra no castelo e encontra um amplo saguão totalmente destruído e saqueado. Todos os corredores")
            escreval("estavam bloqueados com exceção de dois. Um levava a uma sala, outro levava às escadas.")
            escreval("Qual você escolhe? [1]sala [2]escada")
            leia(esc)
            escreval
            //sala
            se esc = 1 entao
               vidainimigo <- 15
               inimigo()
               combate()
               se vidainimigo <= 0  entao
                  escreval("Item de cura adquirido.")
                  inventario[2,2] <- "POÇÃO"
                  escreval
                  escreval("Depois de derrotar seu oponente, você segue o único caminho que lhe é apresentado.")
                  escreval("Este caminho o leva para uma ponte, em seguida para uma escadaria, que acaba na saída do castelo.")
                  rio()
               fimse
            fimse
            //escada
            se esc = 2 entao
               escreval("Você sobe as escadas e chega no alto de uma torre. Você olha pela janela e vê, ao lado de um rio,")
               escreval("um estábulo. Depois segue em frente em um caminho que o leva a uma ponte, em seguida uma escadaria.")
               escreval("Você sai do castelo.")
               rio()
            fimse
         fimse
      fimse

      //para a floresta
      se esc = 2 entao
         escreval("Logo quando você chega na floresta, você se sente perdido, ela é vasta e escura. Mas sob a luz")
         escreval("da lua, você percebe que há dois caminhos para seguir, um para a direita, outro para a esquerda.")
         escreval("Qual você escolhe? [1]Direita [2]Esquerda.")
         leia(esc)
         escreval
         limpatela
         //direita
         se esc = 1 entao
            escreval("_________________________________________________")
            escreval("|                      ZZZ     ########         |")
            escreval("|                       ZZZ   ´_   _  ##        |")
            escreval("|      ________          ZZZ /  <    /}##       |")
            escreval("|     ( ______ )            ( ´´´´´ ;#####      |")
            escreval("|      |\    /|              /{ = }\ ####       |")
            escreval("|      | \__/ |          ~, /´\/\/´\`####       |")
            escreval("|      |______|          /     \/        \      |")
            escreval("|      [______]         /  /____  ____/  /      |")
            escreval("|                      /_______||_______/       |")
            escreval("|_______________________________________________|")
            escreval
            escreval("Seguindo o caminho, você encontra um homem dormindo.Parece que a mochila dele contém algo importante.")
            escreval("Mas lhe ocorre um pensamento de que este cidadão pode ter alguma informação útil.")
            escreval("Você o acorda ou pega o item da mochila dele? [1]Acorda-lo [2]Pegar item.")
            leia(esc)
            escreval
            // Acordar o estranho.
            se esc = 1 entao
               escreval("Você acordou o estranho. Confuso ele olhou com surpresa e temor para você. Depois de se acalmar,")
               escreval("o homem lhe contou sobre sua história.Ele era um mercante viajante, que acabou preso por essas terras.")
               escreval("Entretanto, você percebe um tom de sarcasmo na voz dele e logo se dá conta que aquele homem já não")
               escreval("era lúcido. No fim da conversa, ele te diz que para sair da floresta, você deve seguir em frente e")
               escreval("depois virar a direita, mas sua intuição lhe diz que talvez esse estranho não saiba do que está falando.")
               escreval("Você tem dois caminhos. Um para frente outro para a esquerda. Qual você escolhe? [1]frente [2]esquerda.")
               leia(esc)
               escreval
               //para frente
               se esc = 1 entao
                  escreval("Você agora se depara com mais dois caminhos Um seguindo o caminho atual e o outro para a direita.")
                  escreval("Qual você escolhe? [1]Em frente [2]Direita")
                  leia(esc)
                  escreval
                  //para frente
                  se esc = 1 entao
                     escreval("Você segue em frente.Mas a escuridão da floresta não o deixa ver o que há em frente. Em certo ponto,")
                     escreval("você não sente o chão e percebe que está caindo, o escuro escondeu o penhasco que estava bem a sua")
                     escreval("frente e a longa queda lhe deixa com um pensamento: Eu não devia ter ouvido minha intuição.")
                     escreval
                     escreval("GAME OVER.")
                     escreval("APERTE QUALQUER BOTÃO PARA FINALIZAR.")
                     leia(esc)
                  fimse
                  //para a direita
                  se esc = 2 entao
                     escreval("Você conseguiu sair da floresta e sentiu um pouco de remorso por ter duvidado do estranho.")
                     rio()
                  fimse
               fimse
            fimse
            //pegar item da mochila.
            se esc = 2 entao
               escreval("Você pega o item da mochila sem acordar o estranho.")
               escreval("Poção de cura adquirida.")
               inventario[1,2] <- "POÇÃO"
               escreval("Em seguida, lhe são apresentados dois caminhos. Um para a esquerda outro para frente.")
               escreval("Qual você escolhe? [1]Esquerda [2]Frente")
               leia(esc)
               escreval
               //para esquerda
               se esc = 1 entao
                  vidainimigo <- 15
                  inimigo()
                  combate()
                  se vidainimigo <= 0 entao
                     escreval("Depois de derrotar seu oponente, você se depara com dois caminhos. Um seguindo em frente e o outro seguindo")
                     escreval("para a esquerda. Qual você escolhe? [1]Em frente [2]esquerda")
                     leia(esc)
                     escreval
                     //em frente
                     se esc = 1 entao
                        escreval("Você segue em frente.Mas a escuridão da floresta não o deixa ver o que há em frente. Em certo ponto,")
                        escreval("você não sente o chão e percebe que está caindo, o escuro escondeu o penhasco que estava bem a sua")
                        escreval("frente e a longa queda lhe deixa com um pensamento: Eu não devia ter ouvido minha intuição.")
                        escreval
                        escreval("GAME OVER.")
                        escreval("APERTE QUALQUER BOTÃO PARA FINALIZAR.")
                        leia(esc)
                     fimse
                     //para esquerda
                     se esc = 2 entao
                        rio()
                     fimse
                  fimse
               fimse
               //para frente
               se esc = 2 entao
                  escreval("Você agora se depara com mais dois caminhos Um seguindo o caminho atual e o outro para a direita.")
                  escreval("Qual você escolhe? [1]Em frente [2]Direita")
                  leia(esc)
                  escreval
                  //em frente
                  se esc = 1 entao
                     escreval("Você segue em frente.Mas a escuridão da floresta não o deixa ver o que há em frente. Em certo ponto,")
                     escreval("você não sente o chão e percebe que está caindo, o escuro escondeu o penhasco que estava bem a sua")
                     escreval("frente e a longa queda lhe deixa com um pensamento: Eu não devia ter ouvido minha intuição.")
                     escreval
                     escreval("GAME OVER.")
                     escreval("APERTE QUALQUER BOTÃO PARA FINALIZAR.")
                     leia(esc)
                  fimse
                  //direita
                  se esc = 2 entao
                     rio()
                  fimse
               fimse
            fimse
         fimse
         //para a esquerda(início)
         se esc = 2 entao
            vidainimigo <- 23
            inimigo()
            combate()
            se vidainimigo <= 0 entao
               escreval("Depois de derrotar seu oponente, você se depara com dois caminhos. Um seguindo em frente e o outro seguindo")
               escreval("para a esquerda. Qual você escolhe? [1]Em frente [2]esquerda")
               leia(esc)
               escreval
               // para frente
               se esc = 1 entao
                  escreval("Você segue em frente.Mas a escuridão da floresta não o deixa ver o que há em frente. Em certo ponto,")
                  escreval("você não sente o chão e percebe que está caindo, o escuro escondeu o penhasco que estava bem a sua")
                  escreval("frente e a longa queda lhe deixa com um pensamento: Eu não devia ter ouvido minha intuição.")
                  escreval
                  escreval("GAME OVER.")
                  escreval("APERTE QUALQUER BOTÃO PARA FINALIZAR.")
                  leia(esc)
               fimse
               //para esquerda
               se esc = 2 entao
                  rio()
               fimse
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo