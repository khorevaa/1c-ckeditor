﻿
///////////////////////////////////////////////////////////////////////////////
// ОБРАБОТЧИКИ СОБЫТИЙ ФОРМЫ

#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Параметры.Свойство("Текст", Текст);
	
	Если Параметры.Свойство("Заголовок") Тогда
		ЭтаФорма.Заголовок = Параметры.Заголовок;
	КонецЕсли;
	
	CKEditor.ПриСозданииНаСервере(ЭтаФорма);
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////////////////////////////////
// ОБРАБОТЧИКИ КОМАНД ФОРМЫ

#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура КомандаОК(Команда)
	
	Закрыть(CKEditorКлиент.ПолучитьКонтент(Элементы.CKEditor_ПолеHTML));
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////////////////////////////////
// ОБРАБОТЧИКИ СОБЫТИЙ ЭЛЕМЕНТОВ ФОРМЫ

#Область ОбработчикиСобытийЭлементовФормы

&НаКлиенте
Процедура CKEditor_ПолеHTMLДокументСформирован(Элемент)
	
	CKEditorКлиент.УстановитьКонтент(Элементы.CKEditor_ПолеHTML, Текст);
	
КонецПроцедуры

#КонецОбласти