﻿#language: ru

@tree

Функционал: проверка прикрепления картинки в справочнике Товар

Как тестировщик я хочу
проверить прикрепление картинки в справочнике Товар 

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Проверка прикрепления картинки в справочнике Товар
* Открытие справочника Товар
	И В командном интерфейсе я выбираю 'Закупки' 'Товар'
	Тогда открылось окно 'Товар (создание)'
* Записать форму
	И в поле с именем 'Наименование' я ввожу текст 'Тест'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Выбрать Картинку
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Файл (создание)'
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я выбираю файл "$КаталогПроекта$\Картинка.gif" ВК	
	Тогда открылось окно 'Картинка.gif (Файл)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Картинка.gif (Файл)' в течение 20 секунд
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я жду появления элемента 'Изображение' в течение 20 секунд
		
