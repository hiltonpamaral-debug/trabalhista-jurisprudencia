# peticao-trabalhista-clausulas-universais

Fornece a estrutura de organização em capítulos (estilo "Tayná", o padrão de melhor organização do escritório) e a biblioteca de cláusulas universais que devem entrar em praticamente toda petição inicial trabalhista do escritório, independente da tese específica do caso — confirmadas comparando 4 petições reais de tipos de caso totalmente diferentes.

## Quando usar

Ao redigir qualquer petição inicial trabalhista (reclamação/ação trabalhista) para o escritório, seja a partir de uma análise de conversa do WhatsApp (`importar-conversa-whatsapp-trabalhista`), de documentos extraídos (`extrair-documento-trabalhista`), ou de instrução direta do usuário. Usar em conjunto com o agente `reclamacao-trabalhista-inicial` — este skill fornece o "esqueleto" e as cláusulas de proteção processual; o agente cuida da tese jurídica específica do caso.

## Fonte: petições reais comparadas

- `Petição Inicial Trabalhista Tayná.docx` (Dr. Paulo César Köhler, OAB/MT) — acidente de trabalho + doença ocupacional + condições degradantes. **Referência de organização** (capítulos romanos numerados I-V, subseções numeradas, tabela de valores por pedido no final).
- `Petição Inicial Geovane x Pague Menos.docx` (Dr. Evandro Rodrigues Cardoso, OAB/DF) — falso cargo de confiança / rescisão indireta.
- `Modelo inicial GR.docx` (Wellynton x Pague Menos, mesmo advogado) — reversão de justa causa + transferências + insalubridade.
- `Petição Inicial Elenilde.docx` (mesmo advogado) — fraude salarial "por fora" + rescisão indireta + insalubridade.

## Estrutura de organização (estilo Tayná — adotar como padrão)

Capítulos em algarismos romanos, cada um com subseções numeradas (1, 1.1, 1.2...), nesta ordem:

```
I.   DA GRATUIDADE DA JUSTIÇA
II.  DO CONTRATO DE TRABALHO E DA SÍNTESE LABORAL  (fatos + resumo do vínculo em bullets)
III. [BLOCO DE TESES ESPECÍFICAS DO CASO]           (acidente/doença/rescisão indireta/
     cargo de confiança/insalubridade/etc — o que o agente reclamacao-trabalhista-inicial
     decide com base no caso concreto)
IV.  DOS DIREITOS TRABALHISTAS, ADICIONAIS E DIFERENÇAS RESCISÓRIAS
     (cada pedido de mérito com valor estimado, um por subseção)
V.   DOS PEDIDOS E REQUERIMENTOS FINAIS  (lista consolidada + tabela de valores + valor da causa)
```

Cada subseção de pedido específico segue o padrão: **fundamentação em prosa → citação de jurisprudência/súmula relevante → discriminação do valor estimado em bullets → frase de fechamento "requer a condenação de R$ X, sem prejuízo de posterior apuração em liquidação"**.

## Cláusulas universais (usar em toda petição, adaptando os dados)

### 1. Gratuidade da Justiça (sempre, é item I ou item 1 das preliminares)
> A Reclamante não possui condições financeiras de arcar com as custas processuais, taxas judiciárias e honorários advocatícios sem o grave prejuízo do sustento próprio e de sua família [...]. Tal situação preenche de forma inequívoca os requisitos legais previstos no art. 790, §§ 3º e 4º, da CLT, bem como no art. 99, § 3º, do CPC e na Carta Magna (art. 5º, LXXIV).

Fundamento alternativo mais curto (variante Cardoso): declaração de hipossuficiência assinada pelo reclamante/advogado basta — **Súmula nº 463, I, do TST**.

### 2. Juízo 100% Digital (variante Cardoso — não aparece na variante Köhler, é estilo pessoal, incluir se o advogado responsável for o Dr. Evandro)
> [...] a parte autora manifesta interesse pela adesão ao JUÍZO 100% digital de acordo com a forma adotada pela Resolução nº 345/2020 do CNJ.
Seguido de bloco com nome/e-mail/telefone do patrono e do reclamante.

### 3. Segredo de Justiça (condicional — só incluir se houver documento médico/psiquiátrico sensível nos autos)
> Considerando que a presente ação envolve documentos médicos e atestados que tratam da saúde [mental/física] do Reclamante, requer-se, com fundamento no art. 189 do CPC, a tramitação do processo em segredo de justiça [...].

### 4. Valores meramente estimativos / não limitação da inicial (universal — não constava na Tayná, redação abaixo recriada no estilo dela conforme pedido)
Não havia esta cláusula na petição da Tayná (referência de estrutura/estilo do escritório) — texto abaixo escrito na mesma voz/formalidade dela para preencher a lacuna, a ser usado como versão padrão daqui em diante:

> Os valores atribuídos a cada um dos pedidos formulados nesta exordial possuem natureza meramente estimativa, servindo unicamente ao atendimento da exigência legal de indicação de valor certo aos pedidos, nos termos do art. 840, § 1º, da CLT. Não há, portanto, que se falar em limitação da condenação aos montantes ora apresentados, porquanto a apuração exata e definitiva das verbas eventualmente deferidas depende da regular instrução processual, da produção das provas cabíveis e da liquidação de sentença, momento processual próprio para a definição precisa do quantum debeatur.

Registro histórico (variações encontradas nas petições do Dr. Cardoso, não usar mais como padrão, só para referência):
- Versão longa (Geovane, item dedicado "DOS VALORES MEROS ESTIMATIVOS DA INICIAL"): "Quanto à limitação dos valores indicados na petição inicial, ressalta-se que estes possuem caráter meramente estimativo [...]"
- Versão curta (Wellynton/GR e Elenilde, idêntica nas duas, no pedido final): "Requer que sejam feitos todos os cálculos corretamente para liquidação dos valores na sentença, pois os pedidos são valores estimados, valores mais exatos serão apresentados na fase de liquidação da sentença."

### 5. Integração das verbas para fins de cálculo / primazia da realidade (sempre que houver parcela variável habitual — comissão, gratificação, prêmio, "pagamento por fora")
> O valor a ser considerado como base de cálculo para todos os fins deve corresponder à verdadeira remuneração recebida pelo Reclamante, em conformidade com o princípio da primazia da realidade [...]

Jurisprudência-padrão citada nas 3 petições da variante Cardoso (usar literalmente):
> "AGRAVO DE INSTRUMENTO EM RECURSO DE REVISTA. [...] A averiguação se dá em cada caso, em respeito ao princípio da primazia da realidade, segundo o qual se deve analisar a prática concreta efetivada ao longo da prestação de serviços, independentemente da vontade eventualmente manifestada pelas partes ou ao previsto em instrumento escrito que, porventura, não correspondam à realidade. Agravo desprovido" (Ag-AIRR-1600-43.2017.5.17.0008, 3ª Turma, Relator Ministro Mauricio Godinho Delgado, DEJT 04/10/2024).

### 6. Cadeia padrão de reflexos (aplicar a TODO pedido de natureza salarial/habitual — horas extras, adicional noturno, insalubridade, periculosidade, adicional de transferência, dobra de domingo, diferenças salariais etc.)

Verificado nas 3 petições do Dr. Cardoso (Geovane, Wellynton/GR, Elenilde) — a cadeia de reflexos tem um **núcleo sempre presente** e **itens estendidos** conforme o que o empregador paga no caso concreto.

**Núcleo (sempre, para qualquer verba de natureza salarial habitual)**:
1. DSR (Descanso Semanal Remunerado) — Súmula 172 TST
2. 13º salário (proporcional ou integral, conforme o período)
3. Férias + 1/3 constitucional
4. FGTS + multa de 40%
5. Aviso-prévio (quando há rescisão)
6. Multa do art. 477 da CLT (quando há rescisão em atraso/reconhecida judicialmente)

**Itens estendidos (incluir só se o caso tiver o fato correspondente)**:
- **Horas extras + DSR sobre essas horas extras** — quando a verba pleiteada (ex.: insalubridade, adicional noturno, adicional de transferência, dobra de domingo) integra a base de cálculo das horas extras já pagas/pleiteadas, o aumento da base gera um reflexo de 2ª ordem: mais horas extras devidas, e o DSR dessas horas extras adicionais também. Visto em Elenilde (adicional noturno → reflexo em horas extras e DSR das horas extras) e Wellynton/GR (adicional de transferência e insalubridade → reflexo em horas extras).
- **Multas convencionais da CCT aplicável** — quando a convenção coletiva do caso prevê multa específica com base salarial (Wellynton/GR).
- **ILP1 / Bônus Anual / PPR / PLR** — quando o empregador tem programa de participação em resultados/incentivo de longo prazo, a verba também deve refletir nessas parcelas (Wellynton/GR — ILP1 e Bônus Anual; Tayná — PPR/PLR, Súmula 451 TST).

**Fundamentação legal do núcleo**: Súmula 172 TST (DSR sobre horas extras) + OJ SDI-I 394 TST (a majoração do DSR pela integração de horas extras habituais repercute em férias, 13º, aviso-prévio e FGTS, sem configurar bis in idem — aplicável a horas extras a partir de 20/03/2023) + Súmula 264 TST / art. 457 CLT (base de cálculo das horas extras deve incluir todas as verbas de natureza salarial habituais).

**Regra de ouro contra bis in idem**: quando duas ou mais verbas pleiteadas na mesma petição compartilham parte da cadeia de reflexos (ex.: horas extras E adicional de transferência ambos refletem em 13º/férias/FGTS), **não recalcular o mesmo reflexo duas vezes** — nas 3 petições-fonte, o padrão é calcular o reflexo completo uma única vez no tópico "âncora" (geralmente onde a verba de maior valor é tratada) e, nos demais tópicos, apenas referenciar "tópico específico" ou "vide parágrafo X" para os itens já cobertos, com a nota explícita "para evitar bis in idem". Sempre sinalizar isso no rascunho para quem for revisar.

### 7. Multa do art. 477 da CLT (sempre que houver verba rescisória em atraso ou rescisão indireta/reversão de justa causa)
> [...] a Reclamada deixou de quitar, no prazo legal de 10 dias, as verbas rescisórias devidas [...], nos termos do art. 477, §6º/§8º, da CLT.
Citar o Tema 52 dos Recursos Repetitivos do TST quando a verba só se tornou exigível após reconhecimento judicial (rescisão indireta/reversão de justa causa) — o reconhecimento posterior não afasta a multa.

### 8. Multa do art. 467 da CLT (incluir quando há controvérsia sobre o montante das verbas rescisórias)
> Caso a Reclamada não efetue o pagamento das verbas rescisórias incontroversas na primeira audiência, requer-se a aplicação da multa prevista no art. 467 da CLT, no percentual de 50%.

### 9. Seguro-desemprego — **NÃO é universal, cuidado para não incluir à toa**
Verificado contra as 4 petições-fonte: aparece em Geovane, Wellynton/GR e Elenilde — mas **não aparece na petição da Tayná** (dispensa sem justa causa desde o início, sem nada a reclassificar).

**A pergunta certa nunca é "houve reclassificação da dispensa?" — é "o cliente conseguiu acessar o benefício integralmente?"**. Reclassificação é só o gatilho mais comum, não o único. Três cenários distintos que levam ao pedido (podem se combinar):

1. **Guias não entregues por reclassificação do motivo da dispensa** (pedido de demissão → rescisão indireta, ou justa causa → sem justa causa) — o empregador negou as guias no momento da rescisão com base na classificação original (que não dava direito ao benefício); a reclassificação judicial reabre o direito. Caso das 3 fontes (Geovane, Wellynton/GR, Elenilde).
   > Texto de referência (Geovane, adaptar): "Requer o Reclamante, diante do reconhecimento da conversão [do pedido de demissão / da justa causa] em [rescisão indireta / dispensa sem justa causa], com efeitos equivalentes à dispensa sem justa causa, a concessão do benefício do seguro-desemprego, conforme previsão da Lei nº 7.998/90."

2. **Guias não entregues mesmo em dispensa sem justa causa "normal"** (falha administrativa do empregador, sem qualquer reclassificação) — perguntar sempre ao cliente: "você recebeu as guias e conseguiu dar entrada no seguro-desemprego?". Se não, cabe o pedido mesmo sem reclassificação nenhuma.

3. **Diferença de seguro-desemprego por verbas remuneratórias novas reconhecidas na ação** (aplica tanto em dispensa sem justa causa quanto em rescisão indireta — não depende de reclassificação) — quando a ação reconhece verbas que deveriam ter integrado a média salarial dos últimos 3 meses usada para calcular o benefício (ex.: horas extras habituais, adicional de transferência, comissões, "pagamento por fora"/salário por fora), a média real do cliente é maior do que a oficialmente declarada. Isso é um **reflexo a mais na cadeia de reflexos** (junto com 13º/férias/FGTS — ver cláusula 6), só que respeitando o teto da tabela do ano vigente: só há diferença de fato se o valor recalculado ultrapassar a faixa/teto que já foi usado no cálculo original. Visto em Wellynton/GR: média salarial real de R$ 14.496,63 (após reconhecer adicional de transferência e insalubridade), acima do teto da tabela — o pedido usa a média RECALCULADA, não a declarada.

**Regra geral**: nunca incluir por padrão em dispensa sem justa causa simples — sempre checar com o cliente se as guias foram recebidas, e verificar se há verbas novas reconhecidas na ação que mudem a média salarial usada no cálculo.

Ainda assim, antes de pedir, confirmar com o cliente os requisitos de carência da Lei 7.998/90 (tempo mínimo trabalhado, se é a 1ª/2ª/3ª solicitação, ausência de renda própria suficiente) — são fatos específicos do caso, não presumir.

### 10. Honorários advocatícios de sucumbência (universal — padronizado em 20%)
20% sobre o valor da condenação/liquidação, art. 791-A da CLT — mesmo percentual usado na Tayná (Köhler); adotar 20% como padrão do escritório daqui em diante, independente de qual advogado assina (as petições do Dr. Cardoso usavam 15%, mas o padrão agora é 20%).

### 11. Intimações exclusivamente em nome do advogado (universal — decisão do usuário: manter sempre, com Dr. Evandro Rodrigues Cardoso como referência padrão de preenchimento)
Só aparecia na petição do Geovane (ausente nas outras 3), mas por decisão do escritório passa a ser cláusula padrão em toda petição, adaptando nome/OAB para quem assinar o caso.
> Requer que todas as intimações e publicações sejam feitas EXCLUSIVAMENTE em nome do advogado [NOME — padrão: Evandro Rodrigues Cardoso], OAB/[UF — padrão: DF 75.805], sob pena de nulidade do ato.

### 12. Provas (sempre, penúltimo item antes do valor da causa)
> Protesta provar o alegado por todos os meios de prova em direito admitidos, em especial pelo depoimento pessoal do representante legal da Reclamada, oitiva de testemunhas, juntada de novos documentos e realização de perícia [médica/ergonômica/técnica, conforme o caso].

## Observações de estilo entre advogados do escritório

- **Dr. Paulo César Köhler (OAB/MT)**: petições mais enxutas, sem o bloco de Juízo 100% Digital, foco forte em meio ambiente do trabalho/acidente/doença ocupacional quando aplicável.
- **Dr. Evandro Rodrigues Cardoso (OAB/DF, e-mail ercadvogado@gmail.com)**: sempre inclui Juízo 100% Digital com dados de contato, mais extenso em jurisprudência citada, usa "grifei"/"sinalizei" ao destacar trechos de prova.
- Confirmar com o usuário qual advogado assina antes de decidir incluir o bloco do Juízo 100% Digital.

## Como aplicar

1. Ao montar uma petição nova (via `reclamacao-trabalhista-inicial` ou diretamente), usar a estrutura de capítulos romanos do estilo Tayná como esqueleto.
2. Inserir as cláusulas universais sempre: 1 (gratuidade), 4 (valores estimativos/não limitação), 10 (honorários, 20%), 11 (intimação exclusiva), 12 (provas).
3. Inserir condicionalmente, conforme os fatos do caso: 5 (parcela variável habitual), 6 (hora extra/adicional), 7 (rescisão em atraso), 8 (controvérsia sobre valor), 9 (seguro-desemprego — só se guias não entregues, por reclassificação ou não, OU se há diferença por verbas novas reconhecidas na ação; nunca por padrão em dispensa sem justa causa simples com guias entregues), 2 (Juízo 100% Digital — depende do advogado), 3 (segredo de justiça — só com documento médico sensível).
4. Perguntar ao usuário qual advogado assina (nome/OAB) para preencher a cláusula 11 corretamente — o padrão de referência é Evandro Rodrigues Cardoso, OAB/DF 75.805, mas adaptar para quem assinar de fato.
5. Nunca inventar valores/jurisprudência — os números de cada petição são calculados a partir dos documentos do caso concreto; as cláusulas acima são só o **texto-padrão**, não os valores.
