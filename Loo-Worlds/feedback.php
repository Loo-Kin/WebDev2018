<?php 
    require_once 'components\menu-header.php'; // верхнее меню
    require_once 'components\sidebar.php'; // боковая панель
    require_once 'components\menu-footer.php'; // нижнее меню
    require_once 'components\connection.php'; // БД
?>

<?php
    if(isset($_POST['user_name']) && isset($_POST['email']) && isset($_POST['homepage']) && isset($_POST['message'])){

        $user_name_correct = (bool)preg_match('/^\w+$/', $_POST['user_name']);
        $email_correct = (bool)filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
        $homepage_correct = (bool)filter_var($_POST['homepage'], FILTER_VALIDATE_URL);
        if($_POST['homepage'] == "") $homepage_correct = true;
        $message_correct = (bool)preg_match('/.+/', $_POST['message']);
    
        if($user_name_correct && $email_correct && $homepage_correct && $message_correct) {
            // подключаемся к серверу
            $link = mysqli_connect($host, $user, $password, $database) 
            or die("Ошибка " . mysqli_error($link)); 
    
            // экранирования символов для mysql
            $user_ip = htmlentities(mysqli_real_escape_string($link, $_SERVER['REMOTE_ADDR']));
            $user_browser = htmlentities(mysqli_real_escape_string($link, $_SERVER['HTTP_USER_AGENT']));
            $user_name = htmlentities(mysqli_real_escape_string($link, $_POST['user_name']));
            $email = htmlentities(mysqli_real_escape_string($link, $_POST['email']));
            $homepage = htmlentities(mysqli_real_escape_string($link, trim($_POST['homepage'])));
            $message = htmlentities(mysqli_real_escape_string($link, trim($_POST['message'])));
    
            // создание строки запроса
            $query ="INSERT INTO guestbook VALUES(NULL,'$user_ip','$user_browser','$user_name','$email','$homepage','$message')";
    
            // выполняем запрос
            $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
            if($result)
            {
            echo "Данные добавлены";
            }
            // закрываем подключение
            mysqli_close($link);
            header("Location: feedback.php");
        }
    }
?>

<!doctype HTML>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Feedback - LOO-WORLDS</title>
        <link rel="stylesheet" href="style/style.css" />
        <script src="scripts/clientValidate.js"></script>
    </head>
    <body>
        <?php
            drawTopMenu("feedback");
        ?>
        
        <div class="main_wrapper">
            <div class="article_wrapper">
                
                <div class="content_widget">
                    <h2>Добавить новую запись</h2>
                    <form method="POST">
                        <p>User Name:<br> 
                        <input type="text" name="user_name" size="40" class="textbox" />
                        <span class="error" id="username_errortext"><?php 
                        if(isset($user_name_correct) && $user_name_correct == false) {
                            echo "Допустимы только латинские буквы и цифры в имени пользователя!";
                        }
                        ?></span>
                        </p>
                        <p>E-mail: <br> 
                        <input type="text" name="email" size="40" class="textbox" />
                        <span class="error" id="email_errortext"><?php 
                        if(isset($email_correct) && $email_correct == false) {
                            echo "Формат E-mail: abcde@example.com";
                        }
                        ?></span>
                        </p>
                        <p>Homepage: <br> 
                        <input type="text" name="homepage" size="40" class="textbox" />
                        <span class="error" id="homepage_errortext"><?php 
                        if(isset($homepage_correct) && $homepage_correct == false) {
                            echo "Формат URL: http://example.com или оставьте пустым";
                        }
                        ?></span>
                        </p>
                        <p>Text: <br> 
                        <textarea name="message" cols="40" rows="5" class="textbox"></textarea>
                        <span class="error" id="message_errortext"><?php 
                        if(isset($message_correct) && $message_correct == false) {
                            echo "Введите сообщение.";
                        }
                        ?></span>
                        </p>
                        <input type="submit" value="Добавить" class="button" id="submit_button" />
                        <span class="error" id="submit_errortext"></span>
                    </form>
                </div>

                <?php
                    $link = mysqli_connect($host, $user, $password, $database) 
                    or die("Ошибка " . mysqli_error($link));     
                
                    $query ="SELECT `user_name`, `email`, `homepage`, `message` FROM `guestbook` ORDER BY id DESC";
                    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link));
                ?>

                <?php 
                    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
                        echo "<div class='content_widget'><h2 style='float: left;'>" . $row['user_name'] . "</h2>";
                        echo "<div style='float: right;'>" . $row['email'] . "<br />" . $row['homepage'] . "</div>";
                        echo "<p style='clear: both;'>" . $row['message'] . "</p></div>";
                    }
                ?>

            </div>

            <?php
            drawSidebar();
            ?>
            
        </div>
        <?php
            drawFooter();
        ?>
    </body>
</html>