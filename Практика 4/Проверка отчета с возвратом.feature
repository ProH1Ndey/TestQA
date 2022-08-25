﻿#language: ru

@tree
@Отчеты

Функционал: Проверка отчета с возвратом 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка отчета с возвратом
* Установка отбора для возвратов
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormChangeVariant'
	Тогда открылось окно 'Вариант "Default" отчета "D2001 Продажи"'
	И я перехожу к закладке с именем "FilterPage"
	И в таблице "SettingsComposerSettingsFilterFilterAvailableFields" я перехожу к строке:
		| 'Доступные поля' |
		| 'Количество'     |
	И в таблице "SettingsComposerSettingsFilterFilterAvailableFields" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsFilter" я активизирую поле с именем "SettingsComposerSettingsFilterComparisonType"
	И в таблице "SettingsComposerSettingsFilter" я выбираю текущую строку
	И в таблице "SettingsComposerSettingsFilter" из выпадающего списка с именем "SettingsComposerSettingsFilterComparisonType" я выбираю точное значение 'Меньше'
	И в таблице "SettingsComposerSettingsFilter" я активизирую поле с именем "SettingsComposerSettingsFilterRightValue"
	И в таблице "SettingsComposerSettingsFilter" в поле с именем 'SettingsComposerSettingsFilterRightValue' я ввожу текст '0,000'
	И в таблице "SettingsComposerSettingsFilter" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormEndEdit'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'
	Тогда табличный документ "Result" равен:
		| 'Параметры:'     | 'Период: 01.08.2022 - 31.08.2022'                                                            | ''      | ''                  | ''             |
		| 'Отбор:'         | 'Вид мультивалютной аналитики Равно "ru наименование не заполнено" И\nКоличество Меньше "0"' | ''      | ''                  | ''             |
		| ''               | ''                                                                                           | ''      | ''                  | ''             |
		| 'Период, месяц'  | 'Итого'                                                                                      | ''      | ''                  | ''             |
		| 'Номенклатура'   | ''                                                                                           | ''      | ''                  | ''             |
		| 'Характеристика' | 'Количество'                                                                                 | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' |
		| 'Итого'          | ''                                                                                           | ''      | ''                  | ''             |
	И я закрываю все окна клиентского приложения
