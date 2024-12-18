﻿#Область СлужебныеПроцедурыИФункции

&НаСервере
Функция ЭтотОбъект(ТекущийОбъект = Неопределено) 
	
	Если ТекущийОбъект = Неопределено Тогда
		Возврат РеквизитФормыВЗначение("Объект");
	КонецЕсли;
	
	ЗначениеВРеквизитФормы(ТекущийОбъект, "Объект");
	
	Возврат Неопределено;
	
КонецФункции

#КонецОбласти


#Область ОбработкаКомандФормы

&НаСервере
Процедура ВыполнитьОбменНаСервере()
	
	ИдентификаторКоманды = "ВыполнитьОбмен";
	
	Данные = ЭтотОбъект();
	Данные.ВыполнитьКоманду(ИдентификаторКоманды, Неопределено);
	ЭтотОбъект(Данные);
	
КонецПроцедуры

&НаКлиенте
Процедура ВыполнитьОбмен(Команда)
	ВыполнитьОбменНаСервере();
КонецПроцедуры

&НаСервере
Процедура УзелПриИзмененииНаСервере()
	
	Данные = ЭтотОбъект();
	Данные.СохранитьНастройки();
	ЭтотОбъект(Данные);
	
КонецПроцедуры

&НаКлиенте
Процедура УзелПриИзменении(Элемент)
	УзелПриИзмененииНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	Данные = ЭтотОбъект();
	Данные.ЗагрузитьНастройки();
	ЭтотОбъект(Данные);
КонецПроцедуры

&НаСервере
Процедура ОтправитьЖРНаСервере()
	ИдентификаторКоманды = "ОтправитьОшибкиЖР";
	Данные = ЭтотОбъект();
	Данные.ВыполнитьКоманду(ИдентификаторКоманды, Неопределено);
	ЭтотОбъект(Данные);
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьЖР(Команда)
	ОтправитьЖРНаСервере();
КонецПроцедуры

#КонецОбласти


