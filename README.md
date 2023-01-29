<p align="center">
    <a href="https://github.com/yiisoft" target="_blank">
        <img src="https://avatars0.githubusercontent.com/u/993323" height="100px">
    </a>
    <h1 align="center">Задание №2. Выполнение CRUD операций</h1>
    <br>
</p>

Для того, чтобя скачать проект на компьютер необходимо:
<br>1. Зайти на эту ссылку в gitHub :)
<br>3. Зайти в папку OSPanel/domains (если не можете найти, поищите во все файлах папку OSPanel);<br>
<img src="https://github.com/lzchk/crud/blob/main/img/step1.jfif" alt="img" height="350px">
<br>4. Скопировать путь сверху;
<img src="https://github.com/lzchk/crud/blob/main/img/step2.jpg" alt="img" height="150px">
<br>5. Открыть CMD (нажать на кнопку WIN и написать CMD);
<br>
<img src="https://github.com/lzchk/crud/blob/main/img/step3.jfif" alt="img" height="450px">
<br>6. В появившемся окне написать:
-------------------

      cd *путь который вы скопировали*
      git clone *ссылка на этот репозиторий*
<img src="https://github.com/lzchk/crud/blob/main/img/step4.jfif" alt="img" height="250px">
Папка с названием crud2 появится у вас на компьютере в папке domains;
<br>7. На своем компьютере запустите OSPanel (Open Server Panel);
<img src="https://github.com/lzchk/crud/blob/main/img/step7.PNG" alt="img" height="250px">
<br>8. Нажать на появившся флажок, нажать запустить и подождать несколько секунд;
<img src="https://github.com/lzchk/crud/blob/main/img/step8.jfif" alt="img" height="250px">
<br>9. Нажать вкладку дополнительно и перейти в PhpMyAdmin;
<img src="https://github.com/lzchk/crud/blob/main/img/step9.jfif" alt="img" height="250px">
<br>10. В появившейся форме в строке Пользователь надо написать:
<img src="https://github.com/lzchk/crud/blob/main/img/step10.jfif" alt="img" height="250px">
-------------------

      root
<br>11. Далее слева нужно нажать кнопку "Создать БД"
<br><img src="https://github.com/lzchk/crud/blob/main/img/12.jfif" alt="img" height="250px">
<br>12. В поле "Имя базы данных" написать: 
-------------------

      no_ozon

<br>13. Выбрать тип:
<br><img src="https://github.com/lzchk/crud/blob/main/img/13.jfif" alt="img" height="250px">
-------------------

      utf8mb3_general_ci

И нажать кнопку создать;
<br>14. В левом списке баз данных нужно выбрать ту, что вы только что создали (назвается no_ozon, если забыли);
<br>15. В открывшейся базе банных сверху будет меню, нужно нажать пункт "Импорт";
<br><img src="https://github.com/lzchk/crud/blob/main/img/14.PNG" alt="img" height="250px">
<br>16. Далее необходимо нажать на кнопку "Выберите файл" и зайти в папку crud2 (находится в OSPanel\domains) и выбрать файл 
<br><img src="https://github.com/lzchk/crud/blob/main/img/15.PNG" alt="img" height="250px">
-------------------

      no_ozon.sql

<br>17. Листаем в самый низ страницы и нажимаем кнопку "Импорт";
На вашем компьютере появится такая прекрасная база данных:
<br><img src="https://github.com/lzchk/crud/blob/main/img/16.PNG" alt="img" height="250px">
<br><img src="https://github.com/lzchk/crud/blob/main/img/21.png" alt="img" height="250px">
<br>18. Далее нужно снова нажать на флажок, дополнительно и перейти в консоль.
<br>19. В консоли пишем:
-------------------

      cd domains
      cd crud2
      composer u
Теперь наддо подождать 1-2 минуты.
<br>20. Мы почти закончили. Осталось снова нажать на флажок, вкладку "Мои проекты", выбрать crud2. На открывшейся странице выбрать папку "web";
<br><img src="https://github.com/lzchk/crud/blob/main/img/18.png" alt="img" height="250px">
<br><img src="https://github.com/lzchk/crud/blob/main/img/19.PNG" alt="img" height="450px">
<br> 
<br>21. Поздравляю, вы великолепны!
<br><img src="https://github.com/lzchk/crud/blob/main/img/20.jfif" alt="img" height="250px">
