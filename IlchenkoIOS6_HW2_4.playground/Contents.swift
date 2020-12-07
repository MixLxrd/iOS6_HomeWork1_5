//Homework 2.4
//Опциональные типы и преобразование
//Задача 1

print("Задача 1.1\n")

let first: String? = "150"
let second: String? = "3.50"
var third: String? = nil

//nil-coalescing

print(first ?? "0")
print(second ?? "0")
print(third ?? "0")

/*
 
тернарный оператор
 
first != nil ? print(first!) : print("Exception")
second != nil ? print(second!) : print("Exception")
third != nil ? print(third!) : print("Exception")
*/
third = "999"

//third != nil ? print(third!) : print("Exception")

print(third ?? "0")

/*
 Создать пять строковых констант. Одни константы это только цифры, другие содержат еще и буквы. Найти сумму всех этих констант приведя их к Int. (Используйте optional binding и forced unwrapping)
 */

print("\nЗадача 1.2\n")

let a: String = "1"
let b: String = "2a"
let c: String = "3"
let d: String = "4b"
let e: String = "5"

let aa: Int? = Int(a)
let bb: Int? = Int(b)
let cc: Int? = Int(c)
let dd: Int? = Int(d)
let ee: Int? = Int(e)

var sum1: Int = 0
var sum2: Int = 0

//force unwraping
if aa != nil {
    sum1 += aa!
}
if bb != nil {
    sum1 += bb!
}
if cc != nil {
    sum1 += cc!
}
if dd != nil {
    sum1 += dd!
}
if ee != nil {
    sum1 += ee!
}
print("force unwraping = \(sum1)")

//optional binding
if let aaa = Int(a) {
    sum2 += aaa
}
if let bbb = Int(b) {
    sum2 += bbb
}
if let ccc = Int(c) {
    sum2 += ccc
}
if let ddd = Int(d) {
    sum2 += ddd
}
if let eee = Int(e) {
    sum2 += eee
}
print("optional binding = \(sum2)")

//check

var sum3 = 0

if let aaaa = Int(a), let bbbb = Int(b), let cccc = Int(c), let dddd = Int(d), let eeee = Int(e) {
    sum3 = aaaa + bbbb + cccc + dddd + eeee
}

print("check = \(sum3)")

//Если не знать что хранится в переменной то за один раз нельзя проверить несколько переменных или констант для одного выражения if


//Задача 2
/*
 Создайте опциональную константу с типом данных Optional<Int>. Проинициализируйте конструктором преобразования строки в целое число Int(String). Вместо String впишите температуру за окном. При помощи конструкции if else выведите в консоль информационные сообщения, например для таких случаев, температура:
 Больше нуля;
 Меньше нуля;
 Меньше -10 градусов;
 Больше 10 градусов;
 Нет значения (nil).
 Например, если температура -25 градусов, можно вывести в консоль сообщение “Это что, Сибирь?”

 Попробуйте подставить различные значения в конструктор, чтобы увидеть в консоли все сообщения.
 */


//Формулировка задания некорректная

print("\nЗадача 2\n")

let temp: String = "-25"
let tempData: Int? = Int(temp)

if let temperature = tempData {
    
    switch temperature {
    case ...(-10):
        print("Температура за окном меньше -10 градусов, а если быть точным, то = \(temperature) C'")
    case -10...(-1):
        print("На улице прохладно. За окном \(temperature) C' тепла")
    case 0:
        print("На улице \(temperature). Тут не холодно и не жарко")
    case 1...10:
        print("На улице тепло. За окном \(temperature) C' тепла")
    case 10...:
        print("Можно надевать футболку. За окном \(temperature) C' тепла")
    case nil:
        print("Данные от гидрометцентра не получены")
    default:
        print("Косяк программы :С")
        
    }
}

print()

//Мне кажется такая реализация будет немного интересней

let temp2: Int? = Int.random(in: -50...50)
if let temperature2 = temp2 {
    
    switch temperature2 {
    case ...(-10):
        print("Ну тут точно сибирь! За окном \(temperature2) C' лютого холода!")
    case (-10)...(-1):
        print("На улице прохладно. За окном \(temperature2) C' тепла")
    case 0:
        print("На улице \(temperature2). Тут не холодно и не жарко")
    case 1...10:
        print("На улице тепло. За окном \(temperature2) C' тепла")
    case 10...:
        print("Мне кажется тебе может быть жарко. За окном \(temperature2) C' тепла")
    case nil:
        print("Данные от гидрометцентра не получены")
    default:
        print("Косяк программы :С")
        
    }
}

