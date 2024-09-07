﻿#language: ru

@tree

Функционал: Проверка доступности полей в заказе

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение шапки заказа покупателя
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	Тогда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
	И из выпадающего списка с именем 'Partner' я выбираю по строке "Клиент 1 (1 соглашение)"
	И из выпадающего списка с именем 'Agreement' я выбираю по строке "Соглашение 2"
	И из выпадающего списка с именем 'Company' я выбираю по строке "Собственная компания 1"
	И из выпадающего списка с именем 'Store' я выбираю по строке "Склад 1 (с контролем остатка)"
	И я нажимаю кнопку очистить у поля с именем 'Partner'
	Когда Проверяю шаги на Исключение:
		|И элемент формы с именем 'LegalName' доступен|




