# iOS6_HomeWork1_5
Опциональные типы и преобразование.

### Задача №1
* Создайте три опциональные строковые переменные. Первые две проинициализируйте значениями, оставшуюся переменную проинициализируйте значением `nil`.
При помощи `nil-coalescing` оператора выведите каждое значение в консоль с новой строки.
Затем присвойте 3-й переменной значение и выведите его в консоль, используя `nil-coalescing` оператор. Есть ли разница между выводами в случае, когда переменная не имела значения и после присвоения.
* Создать пять строковых констант. Одни константы это только цифры, другие содержат еще и буквы. Найти сумму всех этих констант приведя их к `Int`.
(Используйте `optional binding` и `forced unwrapping`)

### Задача №2
* Создайте опциональную константу с типом данных `Optional<Int>`. Проинициализируйте конструктором преобразования строки в целое число `Int(String)`. Вместо `String` впишите температуру за окном. При помощи конструкции `if else` выведите в консоль информационные сообщения, например для таких случаев, температура:
  * Больше нуля;
  * Меньше нуля;
  * Меньше -10 градусов;
  * Больше 10 градусов;
  * Нет значения (`nil`).

**Например, если температура -25 градусов, можно вывести в консоль сообщение “Это что, Сибирь?”**

**Попробуйте подставить различные значения в конструктор, чтобы увидеть в консоли все сообщения.**
