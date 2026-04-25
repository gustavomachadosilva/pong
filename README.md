# Pong - CS50 2D

Este é um clone do clássico jogo **Pong**, desenvolvido como parte da primeira aula do curso [CS50's Introduction to Game Development](https://cs50.harvard.edu/games/) da Harvard.

O projeto foi construído utilizando o framework **LÖVE 2D** e a linguagem **Lua**, focando nos fundamentos de desenvolvimento de jogos como o loop principal (game loop), renderização de formas 2D, detecção de colisão (AABB), gerenciamento de estados e efeitos sonoros.

## 🕹️ Como Jogar

O objetivo é simples: não deixe a bola passar pela sua raquete e marque 10 pontos primeiro para vencer!

### Controles
- **Jogador 1 (Esquerda):**
  - `W`: Mover para cima
  - `S`: Mover para baixo
- **Jogador 2 (Direita):**
  - `Seta para Cima`: Mover para cima
  - `Seta para Baixo`: Mover para baixo
- **Geral:**
  - `Enter / Return`: Iniciar jogo, sacar a bola ou reiniciar após o fim.
  - `Escape`: Sair do jogo.

## ✨ Funcionalidades
- **Modo Multiplayer Local:** Jogue contra um amigo no mesmo teclado.
- **Resolução Retro:** Utiliza a biblioteca `push.lua` para manter um visual pixelado em resoluções modernas.
- **Efeitos Sonoros:** Sons para colisões com raquetes, paredes e quando um ponto é marcado.
- **Física Dinâmica:** A velocidade da bola aumenta levemente a cada rebatida bem-sucedida.

## 🛠️ Tecnologias e Bibliotecas
- [LÖVE 2D](https://love2d.org/): Framework para desenvolvimento de jogos em Lua.
- [push.lua](https://github.com/Ulydev/push): Biblioteca para resolução virtual e suporte a janelas redimensionáveis.
- [class.lua](https://github.com/rxi/classic): Biblioteca para facilitar a Programação Orientada a Objetos em Lua.

## 🚀 Como Executar
1. Instale o framework [LÖVE](https://love2d.org/) no seu computador.
2. Clone este repositório ou baixe os arquivos.
3. Navegue até a pasta do projeto e execute:
   ```bash
   love .
   ```
   *(Ou arraste a pasta do projeto para cima do executável do LÖVE).*

## 📚 Créditos
Desenvolvido seguindo as orientações do curso CS50G. 
- **Fontes:** `font.ttf` (estilo retro)
- **Sons:** Assets fornecidos pelo CS50.
