---
тип_работы: Лабораторная работа
предмет: Языки и методы программирования
название: Базовые средства разработки для языка Java
номер: 1
группа: ИУ9-21Б
автор: Старовойтов А. И.
преподаватель: Посевин Д. П.
---

# Цели

формирование комфортного окружения для разработки ПО на языке Java.

# Задачи

1. Установка jdk на ваш компьютер
1. Проверка работоспособности jdk
1. Установка IntelliJ IDEA на ваш компьютер

# Решение

## Код

```java
import java.util.stream.IntStream ;

public class Factorial {
    public static void main (String[] args) {
        if (args.length == 0) {
            System.out.println("usage: java Factorial x");
        } else {
            int n = Integer.parseInt(args[0]);
            int f = IntStream.range(1, n + 1).reduce(1, (r, x)->r*x);
            System.out.println(f);
        }
    }
}
```

## Скриншоты

![Терминал](../pics/terminal.png)
![Проект в IDE](../pics/intellij.png)
![Настройки IDE](../pics/settings.png)

