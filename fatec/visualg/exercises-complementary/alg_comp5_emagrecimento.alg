Algoritmo "Emagrecimento"
// Disciplina  :  [Informática e Negócios -  Lógica de Programação] 
// Professor   : Francisco Antonio de Almeida  ( Xyko Almeida) 
// Descrição   : Calcula o IMC, propoe dieta e calcula o tempo de emagrecimento
// Autor(a)    : Wesley Bertipaglia
// Data atual  : 22/06/2021

Var
   // Seção de Declarações das variáveis
   peso, altura, imc, dieta, atividade: real
   resultadoimc: caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   //apresenta o app
   escreval ("Emagrecimento")
   escreval ("Função: Calcula o IMC, propoe dieta e calcula o tempo")

   //recebe dados
   escreva ("Digite seu peso (em kg): ")
   leia (peso)

   escreva ("Digite sua altura (em metros): ")
   leia (altura)

   //calcula o imc
   imc <- peso/(altura*altura)

   //verifica se está dentro dos padroes
   se imc < 18.5 entao
      resultadoimc <- "Alarmante - Magreza"
   fimse

   se (imc >= 18.5) e (imc < 24.9) entao
      resultadoimc <- "Normal"
   fimse

   se (imc >= 24.9) e (imc < 30) entao
      resultadoimc <- "É preciso emagrecer - Sobrepeso"
   fimse

   se imc >= 30 entao
      resultadoimc <- "Alarmante - Obesidade"
   fimse

   //resultado
   limpatela //limpa tela

   //apresenta o app
   escreval ("Emagrecimento")
   escreval ("Função: Calcula o IMC, propoe dieta e calcula o tempo")

   escreval //pula linha

   escreval ("IMC: ", imc)
   escreval ("Resultado do IMC: ", resultadoimc)

   escreval //pula linha

   //propoe dieta
   escreval ("Proposta de Dieta")

   //dieta magreza
   se resultadoimc = "Alarmante - Magreza" entao
      escreval ("O ideal é que a alimentação visando o ganho de peso seja rica em gorduras boas  presente no azeite, oleaginosas como castanhas, amendoim e nozes, frutas com alto valor calórico como o abacate. Deve-se incluir carboidratos simples, pois são fundamentais para prover energia, além de proteínas  indispensáveis para ganho de massa magra. Pode-se incluir na dieta alimentos como: ovos, leite e derivados, grãos integrais, feijão e vegetais ricos em amido como a batata. Todos esses alimentos, na quantidade correta e preparados de maneira saudável, aumentam o aporte calórico e levam ao ganho de peso seguro.")
      dieta <- 1000
   fimse

   //dieta normal
   se resultadoimc = "Normal" entao
      escreval ("Uma alimentação saudável não tem a ver com limitações rígidas, com a falta de realismo ou com a privação dos alimentos que você ama. Então, o que é alimentação saudável? A alimentação saudável é um padrão de alimentação que sustenta sua melhor saúde física, mental e emocional. Inclui opções alimentares variadas e equilibradas que atendem às suas necessidades de nutrientes e energia. É sobre se sentir bem, ter mais energia, melhorar sua saúde e melhorar seu humor. Incluir hábitos de alimentação saudável não precisa ser algo excessivamente complicado. A pedra angular de uma dieta saudável deve ser substituir alimentos processados ??por alimentos frescos e naturais sempre que possível. Saber o que é alimentação saudável e como devemos adotar esse estilo de vida, pode fazer uma enorme diferença na maneira como você pensa, olha e sente.")
      dieta <- 1000
   fimse

   //dieta sobrepeso
   se resultadoimc = "É preciso emagrecer - Sobrepeso" entao
      escreval ("Ofereça alimentos ricos em fibras, como frutas, legumes, verduras e cereais integrais (arroz integral, macarrão integral, pães integrais). A fibra dos alimentos auxilia na saciedade. Legumes e verduras devem estar presentes no almoço e no jantar. Bem como frutas devem estar presentes nos lanches.")
      dieta <- 2000
   fimse

   //dieta obesidade
   se resultadoimc = "Alarmante - Obesidade" entao
      escreval ("O objetivo é a perca de peso rápida, para que você possa ter uma vida normal. No dia-a-dia, consumir frutas, verduras, legumes, grãos integrais, castanhas, carnes magras, leites e derivados magros. Nada de excesso! Evite qualquer tipo de doce, alimentos gordurosos, refrigerantes, e qualquer tipo de alimento industrial.")
      dieta <- 2000
   fimse

   //propoe atividade fisica
   escreval
   escreval ("Proposta de atividade Física")
   //atividade magreza
   se resultadoimc = "Alarmante - Magreza" entao
      escreval ("O principal objetivo é o fortalecimento e ganho de massa muscular. Recomendação: 3 séries de 15 repetições de flexão dos braços, abdominais, e agachamentos")
      atividade <- 1000
   fimse

   //atividade normal
   se resultadoimc = "Normal" entao
      escreval ("O principal objetivo é o ganho de massa muscular e o fortalecimento dos musculos. Recomendação: Cardio: caminhada ou corrida. Musculação: 3 séries de 15 repetições de flexão dos braços, abdominais, e agachamentos")
      atividade <- 1000
   fimse

   //atividade sobrepeso
   se resultadoimc = "É preciso emagrecer - Sobrepeso" entao
      escreval ("O principal objetivo é a perca de peso. Recomendação: Cardio: corrida, caminhada, polichinelos, ou pular corda. Musculação: 5 séries de 15 repetições de flexão de braços, flexão de peito, abdominais e agachamentos")
      atividade <- 1500
   fimse

   //atividade obesidade
   se resultadoimc = "Alarmante - Obesidade" entao
      escreval ("O principal objetivo é a perca de peso consideravel sem se machucar. Recomendação: exercícios parados, como: levantamento de pequenos pesos (pacote de arroz de 1kg), agachamentos, movimentação dos membros e caminhada dentro de casa")
      atividade <- 1000
   fimse

   //calcula resultados após dieta e atividades físicas
   dieta <- (dieta*7)
   atividade <- (atividade*7)

   //resultados após dieta e atividades fisicas
   escreval
   escreval ("Posíveis Resultados")
   escreval ("Perca de peso semanal com atividade física: ", atividade, " kcal")
   escreval ("Perca de peso semanal com dieta: ", dieta, " kcal")
   escreval ("Perca de peso semanal com atividade fisia e dieta: ", atividade+dieta, " kcal")

Fimalgoritmo
