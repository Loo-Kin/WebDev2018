<?php
    function drawTopMenu($page) {
        echo '
        <script src=".\scripts\topMenu.js">
        </script>

        <div class="menu_panel">
            <div class="main_wrapper">
                <ul id="topMenu">';
                    echo '<a href=".\"><li';
                    if($page == "index") {
                        echo ' id="currentSection"';
                    }
                    echo '>LOO-WORLDS</li></a>';

                    echo '<a href=".\news.php"><li';
                    if($page == "news") {
                        echo ' id="currentSection"';
                    }
                    echo '>News</li></a>';

                    echo '<a href=".\gallery.php"><li';
                    if($page == "gallery") {
                        echo ' id="currentSection"';
                    }
                    echo '>Gallery</li></a>';

                    echo '<a href=".\feedback.php"><li';
                    if($page == "feedback") {
                        echo ' id="currentSection"';
                    }
                    echo '>Feedback</li></a>';

                echo '</ul>
                <div class="hamburger_area" id="topMenuHamburger">
                    <div class="hamburger_button">
                    </div>
                </div>
            </div>
        </div>
        ';
    }
?>