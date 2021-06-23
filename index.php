<?php
    
    include_once($_SERVER['DOCUMENT_ROOT'].'config.php');
    include_once(ROOT.'/template/header.php');

    include_once(ROOT.'/dbconnect.php');

     if((!empty($_POST['button'])) && ($_POST['country'] != '') ) 
     {
        $temp = $_POST['country'];
        include_once(ROOT.'/dbconnect.php');
        /*
        addNewCountry находится в файле dbconnect.php Функция подключается к БД, проверяет наличиес в БД страны, из переменной $temp. Возвращает текст ответа успешно ли добавлена страна или есть ошибки.
        */
        $result = addNewCountry($temp);
     }
     /*
     getCountryList подключается к БД и возвращает список стран и порядковые номера. Возвращает ассоциативный массив
     */
    $countryList = getCountryList();
?>
    <div class="wrapper">
        <div class="body">
            <div class="content">
                <div class="content__country">
                <h1><a href="index.php">СПИСОК СТРАН</a></h1>
                    <table>
                        <tr>
                            <th>№</th>
                            <th>Страна</th>
                        </tr>
                        <?php foreach ($countryList as $countryItem): ?>
                        <tr>
                            <td><?php  echo $countryItem['number']; ?></td>
                            <td><?php  echo htmlspecialchars($countryItem['country_name']); ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </table>
                </div>
                <div class="content__button">
                <button type="submit" class="btn" id="submit">Добавить страну</button>
                    
                        <div class="content_box">
                            <form method="post" action="index.php" class="testp">

                                <input type='text' name='country' class='inputtext' value="">
                                <br>
                                <input type='submit' name='button' id="sendbutton" value="Подтвердить" class="send_country">
                            </form>
                        </div>
                        <p class='msg'><?php if (!empty($result)){echo $result;}  ?></p>
                </div>
            </div>
        </div>
    </div>

<script src="script.js"></script>
<?php include_once(ROOT.'/template/footer.php');?>