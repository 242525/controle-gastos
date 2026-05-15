# Projeto: Controle de Gastos App 📱

## 🎯 Objetivo
Criar um aplicativo Android para monitoramento financeiro mensal com automação de entrada de gastos via notificações de cartão de crédito.

## 🛠️ Stack Tecnológica Recomendada
- **Framework:** [Flutter](https://flutter.dev/) (Linguagem Dart)
- **Banco de Dados Local:** [Isar](https://isar.dev/) (NoSQL rápido e leve para mobile)
- **Gerenciamento de Estado:** Provider ou Riverpod (para manter a UI atualizada)
- **Integração Android:** `flutter_local_notifications` e custom `MethodChannel` para o `NotificationListenerService`.

## 📋 Funcionalidades Detalhadas

### 1. Configuração Inicial e Contas Fixas
- Cadastro de contas mensais (ex: Internet, Netflix).
- **Recorrência:** Opção de marcar como "Conta Fixa". O app gera automaticamente a despesa todo dia 01 de cada mês.
- **Categoria:** Classificação (Moradia, Lazer, Saúde, etc).

### 2. Gestão de Parcelas
- Cadastro de compras parceladas.
- Campos: `Valor da Parcela`, `Número da Parcela Atual` e `Total de Parcelas`.
- O app deve incrementar a parcela automaticamente a cada virada de mês.

### 3. Automação via Notificações (The Magic Feature ✨)
- **Serviço de Background:** Um `NotificationListenerService` nativo do Android.
- **Filtro de Apps:** O usuário seleciona quais apps de banco o monitor deve "ouvir".
- **Extração de Dados (Regex):** 
    - Identificar padrões como `"Compra de R$ X,XX no estabelecimento Y"`.
    - Capturar automaticamente: **Valor**, **Nome do Local** e **Timestamp**.
- **Confirmação:** O app pode enviar uma notificação perguntando: *"Identifiquei um gasto de R$ X no Local Y. Deseja adicionar à categoria 'Lazer'?"*

### 4. Interface e UX (User Experience)
- **Design:** Minimalista, modo escuro (Dark Mode) nativo.
- **Dashboard:** Gráfico de pizza com gastos por categoria.
- **Timeline:** Lista cronológica de todos os gastos do mês.
- **Leveza:** Uso de caches locais para evitar carregamentos lentos.

## 🗺️ Roadmap de Desenvolvimento
1. [ ] **Fase 1:** Estrutura de pastas e modelagem do Banco de Dados (Isar).
2. [ ] **Fase 2:** Telas de Cadastro (Contas Fixas e Parcelas).
3. [ ] **Fase 3:** Implementação do Dashboard de Gastos.
4. [ ] **Fase 4:** Desenvolvimento do serviço nativo de leitura de notificações (Android Native $\rightarrow$ Flutter).
5. [ ] **Fase 5:** Testes de Regex com diferentes bancos e refinamento da UI.

## 📂 Estrutura de Pastas Proposta
```text
controle_gastos_app/
├── lib/
│   ├── core/           # Constantes, Temas e Utilidades
│   ├── data/           # Models (Isar) e Repositories
│   ├── services/       # NotificationListener e API de Banco
│   ├── providers/      # Gerenciamento de Estado
│   └── ui/             # Telas (Pages) e Componentes (Widgets)
├── assets/              # Ícones e Imagens
└── android/            # Código Nativo (Kotlin/Java) para Notificações
```
