Algoritmo "JOGO RPG"
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Jogo RPG.
// Autor(a)    : Lucas Mendon�a, Rafaela e Marcelo Alexandre.
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
   escreval("|        /�=/==|==\=`\   *            #########     |")
   escreval("|         |��__���_�|          *       #######      |")
   escreval("|________ | [__] { }| ___________________|=|________|")
   escreval("|         |      |_||                    |=|        |")
   escreval("|        ��������/ \�                               |")
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
                   escreval(nome, " atacou de forma precipitada e s� causou um arranh�o.(", numdado," de dano)")
              caso 2
                   escreval(nome, " atacou de forma precipitada e s� causou um arranh�o.(", numdado," de dano)")
              caso 3
                   escreval(nome, " acertou o ataque, por�m acertou a armadura do inimigo.(", numdado, " de dano)")
              caso 4
                   escreval(nome, " acertou o ataque, por�m acertou a armadura do inimigo.(", numdado, " de dano)")
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
                   escreval("O inimigo ataca. Mas ", nome, " � mais r�pido e ele s� consegue causar um arranh�o(", numdado," de dano)")
              caso 2
                   escreval("O inimigo d� um soco em ", nome, ".(", numdado," de dano)")
              caso 3
                   escreval("O inimigo d� um soco em ", nome, ".(", numdado," de dano)")
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
      escreval("|                 \`.________.�/                     |")
      escreval("|                  \_\ _  _ /_/       /\             |")
      escreval("|                    \ �  � /         \/             |")
      escreval("|                   �;\    /;`        ||             |")
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
                    escreval("Magia indispon�vel. Vez perdida.")
               fimse
            fimse
            se esc = 3 entao
               menu3()
               escreval
               leia(esc)
               escreval
               se esc = 1 entao
                  se inventario[1,2] = "PO��O" entao
                     vida <- vida + 5
                     escreval("Item de cura usado.")
                     inventario[1,2] <- "VAZIO"
                  senao
                       escreval("N�O H� ITEM. VEZ PERDIDA.")
                  fimse
               fimse
               se esc = 2 entao
                  se inventario [2,2] = "PO��O" entao
                     vida <- vida + 5
                     escreval("Item de cura usado.")
                     inventario[2,2] <- "VAZIO"
                  senao
                       escreval("N�O H� ITEM. VEZ PERDIDA.")
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
         escreval("APERTE QUALQUER BOT�O PARA FINALIZAR.")
         leia(esc)
      fimse
fimprocedimento

procedimento rio()
inicio
      escreval("Voc� chegou em um rio e n�o sabe aonde ele vai. Voc� v� um barco, mas n�o tem certeza se � uma")
      escreval("boa op��o. Voc� pega o barco ou segue a p�? [1]barco [2]a p�")
      leia(esc)
      escreval
      limpatela
      //barco
      se esc = 1 entao
         escreval("Voc� decide ir de barco e embarca nele. No primeiro momento a decida no rio � agrad�vel, mas")
         escreval("a correnteza come�a a ficar mais forte e voc� tem dificuldade de controlar o barco. Depois de conseguir")
         escreval("atravessar a turbul�ncia do rio, voc� percebe que, d� �gua surge um monstro, ele embarca.")
         vidainimigo <- 20
         inimigo()
         combate()
         se vidainimigo <= 0 entao
            escreval("Ap�s a luta, voc� se sente exausto e acaba adormecendo no barco. Quando acorda, voc� v� o nascer")
            escreval("do sol e o canto dos p�ssaros e se d� conta de que n�o estava mais por aquelas terras amaldi�oadas.")
            escreval
            escreval("FIM DE JOGO. OBRIGADO POR JOGAR.")
            escreval("APERTE QUALQUER BOT�O PARA FINALIZAR.")
            leia(esc)
         fimse
      fimse
      // a p�
      se esc = 2 entao
         escreval("Voc� decide ir a p� pelas margens do rio. Em determinado ponto, voc� encontra um est�bulo.")
         se inventario[2,1] = "CHAVE" entao
            limpatela
            escreval("Voc� raciocina e chega a conclus�o de que a chave que voc� obteve era a do est�bulo.")
            escreval("Voc� est� certo. Ap�s abrir as porta, voc� se encontra com um belo cavalo, o desamarra")
            escreval("e cavalga para longe dessas terras amaldi�oadas.")
            escreval
            escreval("_______________________________________________________")
            escreval("|              #####                                  |")
            escreval("|             /o  ###               ;                 |")
            escreval("|            /     ###--,====,-; __/                  |")
            escreval("|           (_ /\      ,__  ,   \                     |")
            escreval("|                |  ;     �`    |                     |")
            escreval("|               /  / `----� \  /                      |")
            escreval("|_____________________________________________________|")
            escreval
            escreval("FIM DE JOGO. OBRIGADO POR JOGAR.")
            escreval("APERTE QUALQUER BOT�O PARA FINALIZAR.")
            leia(esc)
         senao
              escreval("Voc� n�o tem a chave para abrir o est�bulo e o cansa�o n�o o deixa seguir em frente.")
              escreval("Ent�o voc� volta e pega o barco.")
              escreval("No primeiro momento a decida no rio � agrad�vel, mas a correnteza come�a a ficar mais forte")
              escreval("e voc� tem dificuldade de controlar o barco. Depois de conseguir atravessar a turbul�ncia")
              escreval("do rio, voc� percebe que, d� �gua surge um monstro, ele embarca.")
              vidainimigo <- 20
              inimigo()
              combate()
              se vidainimigo <= 0 entao
                 escreval("Ap�s a luta, voc� se sente exausto e acaba adormecendo no barco. Quando acorda, voc� v� o nascer")
                 escreval("do sol e o canto dos p�ssaros e se d� conta de que n�o estava mais por aquelas terras amaldi�oadas.")
                 escreval
                 escreval("FIM DE JOGO. OBRIGADO POR JOGAR.")
              fimse
         fimse
      fimse
fimprocedimento

Inicio
   // MENU DE OP��ES.
   cabana()

   escreval("                       [1]JOGAR")
   escreval("                       [2]SAIR")
   leia(menu)

   //Cria��o de personagem.
   se menu = 1 entao
      escreval("--------------CRIA��O DE PERSONAGEM----------------")
      escreval
      escreva("Nome: ")
      leia(nome)
      escreval
      vida <- 50
      magia <- 15
      inventario[1,1] <- "ESPADA"
      escreval("               ", nome,"                 __INVENT�RIO___")
      escreval("               VIDA: 50            |ESPADA |       |")
      escreval("               MAGIA: 15           |_______|_______|")
      escreval("                                   |       |       |")
      escreval("                                   |_______|_______|")
      escreval
      
      //Introdu��o da hist�ria e explica��o de mec�nica.
      escreval("__________________________________________________")
      escreval("|Voc� � um viajante de uma Terra distante. Em uma|")
      escreval("|de suas viagens, voc� encontra uma pequena casa.|")
      escreval("|Este lugar fica isolado, sem nada ao redor a n�o|")
      escreval("|ser a natureza. Ap�s entrar na casa,voc� percebe|")
      escreval("|um homem velho muito ferido. Antes de falecer, o|")
      escreval("|o senhor lhe diz que estas terras portam uma mau|")
      escreval("|terr�vel e que voc� deve sair imediatamente. Mas|")
      escreval("|logo depois, voc� ouve algo se aproximando e se |")
      escreval("|d� conta de que � tarde demais para retornar.Seu|")
      escreval("|objetivo � sobreviver e sair desta regi�o.      |")
      escreval("|ESTE JOGO TRABALHA COM UMA MEC�NICA DE ESCOLHAS,|")
      escreval("|O CAMINHO QUE VOC� TOMAR DECIDIR� O DESTINO DO  |")
      escreval("|SEU PERSONAGEM. O COMBATE � PELA SORTE, UM DADO |")
      escreval("|SIMULADO DECIDIR� A QUANTIDADE DE DANO QUE UM   |")
      escreval("|INIMIGO RECEBER�.                               |")
      escreval("|________________________________________________|")
      
      // Primeira escolha.
      escreval("_____________________________________________________________")
      escreval("| _ / _  \_                                                 |")
      escreval("|| `-� `-� |                                                |")
      escreval("||;-------:|         |>                         {####}      |")
      escreval("| \|      / ________ |_        [@@]   {####}   {######}     |")
      escreval("|  |= {} |_/\_|_|_|_\| |     [@@@@@@]{######}  {######}     |")
      escreval("|  |=                  |     [@@@@@@]{##||##}   {#||#}      |")
      escreval("|  |=     ;-=-=-=-=-=  |        ||      ||        ||        |")
      escreval("|  |=    | \_=__=__=_\ |        ||         {^^^^}   [��] /&&|")
      escreval("|  |=    |           ; |         [####]   {^^^^^^} [����]&&&|")
      escreval("|  |=    |     ,:,   | |        [######] {^^^^^^^^} �����]&&|")
      escreval("|  |=    |    ,|||,  | |         [#||#]   {______} [__ _]\__|")
      escreval("|  |=    |    |||||  | |           || / /    ||      ||   |||")
      escreval("|              \   \                 / /     ||      ||   |||")
      escreval("|               \   \               / /                     |")
      escreval("|___________________________________________________________|")
      escreval
      escreval("Voc� se depara com dois caminhos. Um para um castelo, outro para uma floresta.")
      escreval("Qual voc� escolhe?:[1] Ir para o castelo. [2] Ir para a floresta.")
      leia(esc)
      escreval
      
      //para o castelo
      se esc = 1 entao
         escreval("Quando voc� chega no castelo.Voc� percebe que existe um caminho que contorna a constru��o.")
         escreval("Voc� segue o caminho ou continua pela entrada do castelo?:[1] Seguir o caminho. [2]Entrar no castelo.")
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
               escreval("Depois de derrotar o inimigo, voc� entra pela entrada dos fundos do castelo.")
               vidainimigo <- 15
               inimigo()
               combate()
               se vidainimigo <= 0  entao
                  escreval("Item de cura adquirido.")
                  inventario[2,2] <- "PO��O"
                  escreval
                  escreval("Depois de derrotar seu oponente, voc� segue o �nico caminho que lhe � apresentado.")
                  escreval("Este caminho o leva para uma ponte, em seguida para uma escadaria, que acaba na sa�da do castelo.")
                  rio()
               fimse
            fimse
         fimse
         // se entrar no castelo
         limpatela
         se esc = 2 entao
            escreval("Voc� entra no castelo e encontra um amplo sagu�o totalmente destru�do e saqueado. Todos os corredores")
            escreval("estavam bloqueados com exce��o de dois. Um levava a uma sala, outro levava �s escadas.")
            escreval("Qual voc� escolhe? [1]sala [2]escada")
            leia(esc)
            escreval
            //sala
            se esc = 1 entao
               vidainimigo <- 15
               inimigo()
               combate()
               se vidainimigo <= 0  entao
                  escreval("Item de cura adquirido.")
                  inventario[2,2] <- "PO��O"
                  escreval
                  escreval("Depois de derrotar seu oponente, voc� segue o �nico caminho que lhe � apresentado.")
                  escreval("Este caminho o leva para uma ponte, em seguida para uma escadaria, que acaba na sa�da do castelo.")
                  rio()
               fimse
            fimse
            //escada
            se esc = 2 entao
               escreval("Voc� sobe as escadas e chega no alto de uma torre. Voc� olha pela janela e v�, ao lado de um rio,")
               escreval("um est�bulo. Depois segue em frente em um caminho que o leva a uma ponte, em seguida uma escadaria.")
               escreval("Voc� sai do castelo.")
               rio()
            fimse
         fimse
      fimse

      //para a floresta
      se esc = 2 entao
         escreval("Logo quando voc� chega na floresta, voc� se sente perdido, ela � vasta e escura. Mas sob a luz")
         escreval("da lua, voc� percebe que h� dois caminhos para seguir, um para a direita, outro para a esquerda.")
         escreval("Qual voc� escolhe? [1]Direita [2]Esquerda.")
         leia(esc)
         escreval
         limpatela
         //direita
         se esc = 1 entao
            escreval("_________________________________________________")
            escreval("|                      ZZZ     ########         |")
            escreval("|                       ZZZ   �_   _  ##        |")
            escreval("|      ________          ZZZ /  <    /}##       |")
            escreval("|     ( ______ )            ( ����� ;#####      |")
            escreval("|      |\    /|              /{ = }\ ####       |")
            escreval("|      | \__/ |          ~, /�\/\/�\`####       |")
            escreval("|      |______|          /     \/        \      |")
            escreval("|      [______]         /  /____  ____/  /      |")
            escreval("|                      /_______||_______/       |")
            escreval("|_______________________________________________|")
            escreval
            escreval("Seguindo o caminho, voc� encontra um homem dormindo.Parece que a mochila dele cont�m algo importante.")
            escreval("Mas lhe ocorre um pensamento de que este cidad�o pode ter alguma informa��o �til.")
            escreval("Voc� o acorda ou pega o item da mochila dele? [1]Acorda-lo [2]Pegar item.")
            leia(esc)
            escreval
            // Acordar o estranho.
            se esc = 1 entao
               escreval("Voc� acordou o estranho. Confuso ele olhou com surpresa e temor para voc�. Depois de se acalmar,")
               escreval("o homem lhe contou sobre sua hist�ria.Ele era um mercante viajante, que acabou preso por essas terras.")
               escreval("Entretanto, voc� percebe um tom de sarcasmo na voz dele e logo se d� conta que aquele homem j� n�o")
               escreval("era l�cido. No fim da conversa, ele te diz que para sair da floresta, voc� deve seguir em frente e")
               escreval("depois virar a direita, mas sua intui��o lhe diz que talvez esse estranho n�o saiba do que est� falando.")
               escreval("Voc� tem dois caminhos. Um para frente outro para a esquerda. Qual voc� escolhe? [1]frente [2]esquerda.")
               leia(esc)
               escreval
               //para frente
               se esc = 1 entao
                  escreval("Voc� agora se depara com mais dois caminhos Um seguindo o caminho atual e o outro para a direita.")
                  escreval("Qual voc� escolhe? [1]Em frente [2]Direita")
                  leia(esc)
                  escreval
                  //para frente
                  se esc = 1 entao
                     escreval("Voc� segue em frente.Mas a escurid�o da floresta n�o o deixa ver o que h� em frente. Em certo ponto,")
                     escreval("voc� n�o sente o ch�o e percebe que est� caindo, o escuro escondeu o penhasco que estava bem a sua")
                     escreval("frente e a longa queda lhe deixa com um pensamento: Eu n�o devia ter ouvido minha intui��o.")
                     escreval
                     escreval("GAME OVER.")
                     escreval("APERTE QUALQUER BOT�O PARA FINALIZAR.")
                     leia(esc)
                  fimse
                  //para a direita
                  se esc = 2 entao
                     escreval("Voc� conseguiu sair da floresta e sentiu um pouco de remorso por ter duvidado do estranho.")
                     rio()
                  fimse
               fimse
            fimse
            //pegar item da mochila.
            se esc = 2 entao
               escreval("Voc� pega o item da mochila sem acordar o estranho.")
               escreval("Po��o de cura adquirida.")
               inventario[1,2] <- "PO��O"
               escreval("Em seguida, lhe s�o apresentados dois caminhos. Um para a esquerda outro para frente.")
               escreval("Qual voc� escolhe? [1]Esquerda [2]Frente")
               leia(esc)
               escreval
               //para esquerda
               se esc = 1 entao
                  vidainimigo <- 15
                  inimigo()
                  combate()
                  se vidainimigo <= 0 entao
                     escreval("Depois de derrotar seu oponente, voc� se depara com dois caminhos. Um seguindo em frente e o outro seguindo")
                     escreval("para a esquerda. Qual voc� escolhe? [1]Em frente [2]esquerda")
                     leia(esc)
                     escreval
                     //em frente
                     se esc = 1 entao
                        escreval("Voc� segue em frente.Mas a escurid�o da floresta n�o o deixa ver o que h� em frente. Em certo ponto,")
                        escreval("voc� n�o sente o ch�o e percebe que est� caindo, o escuro escondeu o penhasco que estava bem a sua")
                        escreval("frente e a longa queda lhe deixa com um pensamento: Eu n�o devia ter ouvido minha intui��o.")
                        escreval
                        escreval("GAME OVER.")
                        escreval("APERTE QUALQUER BOT�O PARA FINALIZAR.")
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
                  escreval("Voc� agora se depara com mais dois caminhos Um seguindo o caminho atual e o outro para a direita.")
                  escreval("Qual voc� escolhe? [1]Em frente [2]Direita")
                  leia(esc)
                  escreval
                  //em frente
                  se esc = 1 entao
                     escreval("Voc� segue em frente.Mas a escurid�o da floresta n�o o deixa ver o que h� em frente. Em certo ponto,")
                     escreval("voc� n�o sente o ch�o e percebe que est� caindo, o escuro escondeu o penhasco que estava bem a sua")
                     escreval("frente e a longa queda lhe deixa com um pensamento: Eu n�o devia ter ouvido minha intui��o.")
                     escreval
                     escreval("GAME OVER.")
                     escreval("APERTE QUALQUER BOT�O PARA FINALIZAR.")
                     leia(esc)
                  fimse
                  //direita
                  se esc = 2 entao
                     rio()
                  fimse
               fimse
            fimse
         fimse
         //para a esquerda(in�cio)
         se esc = 2 entao
            vidainimigo <- 23
            inimigo()
            combate()
            se vidainimigo <= 0 entao
               escreval("Depois de derrotar seu oponente, voc� se depara com dois caminhos. Um seguindo em frente e o outro seguindo")
               escreval("para a esquerda. Qual voc� escolhe? [1]Em frente [2]esquerda")
               leia(esc)
               escreval
               // para frente
               se esc = 1 entao
                  escreval("Voc� segue em frente.Mas a escurid�o da floresta n�o o deixa ver o que h� em frente. Em certo ponto,")
                  escreval("voc� n�o sente o ch�o e percebe que est� caindo, o escuro escondeu o penhasco que estava bem a sua")
                  escreval("frente e a longa queda lhe deixa com um pensamento: Eu n�o devia ter ouvido minha intui��o.")
                  escreval
                  escreval("GAME OVER.")
                  escreval("APERTE QUALQUER BOT�O PARA FINALIZAR.")
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