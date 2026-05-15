# 🎨 Protótipo de Interface: Controle Gastos App

## 🎨 Identidade Visual (Vibe)
- **Estilo:** Neumorfismo Moderno / Material Design 3.
- **Paleta de Cores (Dark Mode):**
    - Fundo: `#121212` (Deep Black/Grey)
    - Cards: `#1E1E1E` (Dark Grey)
    - Acento Principal: `#00C853` (Emerald Green - Sucesso/Saldo)
    - Alerta/Gasto: `#FF5252` (Coral Red - Saída)
    - Texto: `#FFFFFF` (Primário) e `#B0B0B0` (Secundário)
- **Tipografia:** Sans-serif limpa (Roboto ou Product Sans).

---

## 📱 Mapa de Telas

### 1. Dashboard (Tela Principal)
O objetivo é dar a resposta "Quanto eu tenho e quanto gastei?" em 2 segundos.

- **Header (Wallet Card):**
    - Um card destacado no topo com gradiente verde escuro.
    - `Saldo Disponível: R$ X.XXX,XX` (Fonte grande e bold).
    - `Gasto do Mês: R$ Y.YYY,YY` (Fonte menor, cor suave).
- **Category Quick-View (Scroll Horizontal):**
    - Pequenos círculos com ícones de categorias (Alimentação, Transporte, etc).
    - Abaixo do ícone, uma barra de progresso fina indicando quanto do limite daquela categoria já foi consumido.
- **Timeline de Atividades (Lista Vertical):**
    - Cards compactos: `[Ícone Categoria] | Descrição | Data | Valor (em vermelho)`.
    - Itens capturados automaticamente via notificação têm um pequeno badge `⚡ Auto`.
- **FAB (Floating Action Button):**
    - Botão `+` flutuante no canto inferior direito para adição rápida.

### 2. Tela de Adição Rápida (Modal/Page)
Focada em agilidade para não desistir de anotar o gasto.

- **Input de Valor:** Campo numérico gigante no topo `R$ 0,00`.
- **Seleção de Método:** 3 ícones circulares (Cartão 💳, Pix 📱, Dinheiro 💵).
- **Seleção de Categoria:** Grid de ícones coloridos.
- **Opções Avançadas (Toggles):**
    - `[ ] Recorrente?` $\rightarrow$ Abre seletor de dia do mês.
    - `[ ] Parcelado?` $\rightarrow$ Abre campo `X de Y parcelas`.
- **Botão Salvar:** Botão largo e verde na base da tela.

### 3. Tela de Análise e Relatórios
Onde o usuário entende o comportamento financeiro.

- **Gráfico de Rosca (Donut Chart):** Centralizado, mostrando a distribuição de gastos por categoria. Ao clicar em uma fatia, a lista abaixo filtra automaticamente.
- **Ranking de Gastos:** Lista de categorias ordenadas da "Mais Cara" para a "Mais Barata".
- **Comparativo Mensal:** Gráfico de barras simples comparando o mês atual com o anterior.

### 4. Centro de Confirmações (Smart Log)
A tela onde a "mágica" das notificações é validada.

- **Lista de Pendentes:** Cards de notificações capturadas que ainda não foram categorizadas.
- **Interação:** *"Detectamos R$ 42,00 no 'Posto Shell'. Adicionar a 'Transporte'?"*
    - Botão `[✅ Confirmar]`
    - Botão `[🔄 Alterar Categoria]`
    - Botão `[❌ Ignorar]`

### 5. Configurações e Setup
- **Gestão de Contas Fixas:** Lista de todas as contas recursivas com opção de editar valor ou data.
- **Monitor de Bancos:** Lista de apps instalados no Android com checkboxes para escolher quais o app deve monitorar (ex: Nubank, Inter, Itaú).
- **Perfil e Backup:** Opção de exportar dados para CSV ou Backup na nuvem.

---

## ⚙️ Fluxo de Usuário (User Flow)
`Notificação do Banco` $\rightarrow$ `App captura em background` $\rightarrow$ `Notificação de Confirmação` $\rightarrow$ `Usuário clica em Confirmar` $\rightarrow$ `Dashboard atualiza automaticamente`.
