﻿#Область СлужебныйПрограммныйИнтерфейс

// Открывает форму ввода пароля пользователя сервиса.
//
// Параметры:
//  ОбработкаПродолжения      - ОписаниеОповещения, которое нужно обработать после получения пароля.
//  ФормаВладелец             - УправляемаяФорма, которая запрашивает пароль.
//  ПарольПользователяСервиса - Строка - текущий пароль пользователя сервиса.
//
Процедура ЗапроситьПарольДляАутентификацииВСервисе(ОбработкаПродолжения, ФормаВладелец, ПарольПользователяСервиса) Экспорт
	
	Если ПарольПользователяСервиса = Неопределено Тогда
		ОткрытьФорму("ОбщаяФорма.АутентификацияВСервисе", , ФормаВладелец, , , , ОбработкаПродолжения);
	Иначе
		ВыполнитьОбработкуОповещения(ОбработкаПродолжения, ПарольПользователяСервиса);
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти
