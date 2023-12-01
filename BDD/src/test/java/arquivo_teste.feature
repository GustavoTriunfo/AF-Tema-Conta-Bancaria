#Author: 222788@facens.com.br
#Keywords Summary:
#Feature: List of scenarios.
#Scenario: Businnes rule through list of steps with arguments.
#Giver: Some preconditions step.
#Then: To observe outcomes or validation.
#And,Eut: To enumerate more Given,When,Then steps.
#Scenarios Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table.
#Background: List of steps run before each of the scenarios.
#""" (Doc strings)
#| (Data tables)
#@ (Tags/Labels): To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@tag 
Feature: Cliente faz seguinte de dinheiro como um cliente
eu gostaria de sacar dinheiro em caixa eletrônico,
para que eu não tenha que esperar em um fila do banco.

	@tag1
	Scenario: Cliente especial com saldo negativo
	Given Um cliente especial com saldo atual de -200 reais
	When for solicitado um saque no valor de 100 reais
	Then deve efetuar o saque e atualizar o saldo da conta para -300 reais
	And check more outcomes 
	
	@tag2
	Scenario Outline: Cliente comum com saldo negativo
	Given Um cliente comum com saldo atual de -200 reais
	When solicitar um saque de 200 reais
	Then não deve efetuar o saque e deve retornar a mensagem Saldo Insuficiente
