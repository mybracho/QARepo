﻿#language: ru

@tree

Функционал: Создание номенклатуры в цикле

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание номенклатуры
	И Я запоминаю значение выражения '1' в переменную "Шаг"
	И я делаю 10 раз
		И Я запоминаю значение выражения '$Шаг$ + 1' в переменную "Шаг"
		И Я запоминаю значение выражения '"Номенклатура" + $Шаг$ ' в переменную "НаименованиеНоменклатуры"	
		И Я запоминаю значение выражения 'СтрШаблон("e1cib/data/Catalog.Items?ref=%1", СтрЗаменить(Новый УникальныйИдентификатор, "-", ""))' в переменную "УИДНоменкатуры"
		И я проверяю или создаю для справочника "Items" объекты:
			| 'Ref'                                                                                     | 'DeletionMark' | 'Code' | 'ItemType'                                                          | 'Unit'                                                          | 'Vendor'                                                           | 'PackageUnit' | 'Description_en'             |
			| '$УИДНоменкатуры$' | 'False'        |        | 'e1cib/data/Catalog.ItemTypes?ref=b762b13668d0905011eb76684b9f6879' | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | ''            | '$НаименованиеНоменклатуры$' |

