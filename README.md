# Códigos em C

Coleção de exercícios e projetos em **C** (e um pouco de C++ / embutidos) desenvolvidos durante a graduação em Engenharia de Computação.

Os programas de console compilam com `gcc` via `Makefile`. Os exemplos para **PIC16F877A** (MPLAB X / XC8) estão documentados à parte e não entram no build automatizado.

[![Build](https://github.com/matamboni/codigos_c/actions/workflows/build.yml/badge.svg)](https://github.com/matamboni/codigos_c/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

---

## Sobre o autor

**Matheus Costa Amboni**

Alguns trabalhos foram feitos em dupla com **Antônio Pedro Chacarosque**.

---

## Estrutura do repositório

```text
codigos_c/
├── array_element_counter.c      # Conta ocorrências em um vetor
├── number_guessing_game.c       # Jogo de adivinhação com níveis
├── MoviesWriter.c               # Cadastro de filmes em arquivo
├── min_max.c                    # Maior e menor valor em uma sequência
├── final_activity/
│   ├── modern_barbershop.c      # Agendamento de barbearia (console)
│   ├── menu.h                   # Menus da barbearia
│   └── mplab.cpp                # Projeto embutido (PIC / LCD)
├── exemplo.X/
│   └── main.c                   # Pisca LED no PIC16F877A
├── aleatory/
│   └── ex1.cpp                  # Rascunho em C++
├── Makefile
└── LICENSE
```

---

## Programas de console

| Arquivo | Descrição |
|---------|-----------|
| [`array_element_counter.c`](array_element_counter.c) | Lê um vetor de tamanho 10 e conta quantas vezes um valor escolhido aparece. |
| [`number_guessing_game.c`](number_guessing_game.c) | Jogo de adivinhar o número, com dificuldade e número de tentativas. |
| [`MoviesWriter.c`](MoviesWriter.c) | Lê dados de filmes (`struct`) e grava em `movies.txt`. |
| [`min_max.c`](min_max.c) | Encontra o maior e o menor número em uma sequência informada pelo usuário. |
| [`final_activity/modern_barbershop.c`](final_activity/modern_barbershop.c) | Simula o agendamento de corte/barba em uma barbearia (menus em `menu.h`). |

---

## Projetos embutidos (PIC16F877A)

Estes arquivos usam headers do compilador XC8 / MPLAB X (`xc.h`, `pic16f877a.h`, etc.) e **não** são compilados pelo `Makefile` nem pelo GitHub Actions.

| Arquivo | Descrição |
|---------|-----------|
| [`exemplo.X/main.c`](exemplo.X/main.c) | Loop que alterna o pino `RB0` (pisca LED) a cada 1 s. |
| [`final_activity/mplab.cpp`](final_activity/mplab.cpp) | Projeto com LCD e I/O no PIC16F877A. |

Para abrir e gravar no microcontrolador, use o **MPLAB X IDE** com o toolchain **XC8**.

---

## Outros

| Arquivo | Descrição |
|---------|-----------|
| [`aleatory/ex1.cpp`](aleatory/ex1.cpp) | Rascunho em C++ (geração de números aleatórios). Mantido como referência de estudo. |

---

## Como compilar

### Pré-requisitos

- Compilador C (`gcc` ou equivalente)
- `make`

No Ubuntu / Debian:

```bash
sudo apt-get update
sudo apt-get install -y build-essential
```

No Windows, use [MSYS2](https://www.msys2.org/), WSL ou o MinGW com `make` no `PATH`.

### Compilar todos os programas de console

```bash
make
```

Os binários ficam em `out/`:

```text
out/array_element_counter
out/number_guessing_game
out/MoviesWriter
out/min_max
out/modern_barbershop
```

### Compilar um arquivo à mão

```bash
gcc -Wall -Wextra -std=c11 array_element_counter.c -o out/array_element_counter
```

### Limpar

```bash
make clean
```

---

## Integração contínua

A cada push e pull request na branch `main`, o workflow [`.github/workflows/build.yml`](.github/workflows/build.yml) roda `make` no Ubuntu e confirma que os programas de console compilam.

---

## Licença

Distribuído sob a licença [MIT](LICENSE).
