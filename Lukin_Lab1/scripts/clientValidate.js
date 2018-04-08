window.onload = function() {
    var form = document.forms[0];

    var userName = form.elements.user_name.value;
    var email = form.elements.email.value;
    var homepage = form.elements.homepage.value;
    var message = form.elements.message.value.trim();

    var submitButton = document.getElementById('submit_button');

    var userNameReg = /^\w+$/;
    var emailReg = /\w+@\w+\.\w+/;
    var homepageReg = /.+\..+/;

    var userNameCorrect, emailCorrect, homepageCorrect, messageCorrect;

    var userNameErrorText = document.getElementById('username_errortext');
    var emailErrorText = document.getElementById('email_errortext');
    var messageErrorText = document.getElementById('message_errortext');
    var submitErrorText = document.getElementById('submit_errortext');

    function ValidateUserName() {
        if(userName.match(userNameReg) == null) {
            userNameErrorText.innerHTML = "Обязательное поле!";
            userNameCorrect = false;
        } else {
            if(userName.match(userNameReg)[0] != userName.match(userNameReg).input) {
                userNameErrorText.innerHTML = "Допустимы только латинские буквы и цифры!";
                userNameCorrect = false;
            } else {
                userNameErrorText.innerHTML = "";
                userNameCorrect = true;
            }
        }
    }

    function ValidateEmail() {
        if(email.match(emailReg) == null) {
            emailErrorText.innerHTML = "Обязательное поле!";
            emailCorrect = false;
        } else {
            if(email.match(emailReg)[0] != email.match(emailReg).input) {
                emailErrorText.innerHTML = "Формат E-mail: abcde@example.com";
                emailCorrect = false;
            } else {
                emailErrorText.innerHTML = "";
                emailCorrect = true;
            }
        }
    }

    function ValidateMessage() {
        if(message.length == 0) {
            messageErrorText.innerHTML = "Введите сообщение.";
            messageCorrect = false;
        } else {
            messageErrorText.innerHTML = "";
            messageCorrect = true;
        }
    }

    function ValidateForm() {
        if(userNameCorrect && emailCorrect && messageCorrect) {
            submitErrorText.innerHTML = "";
            form.submit();
        }
        else {
            event.preventDefault();
            submitErrorText.innerHTML = "Корректно заполните все поля.";
            event.preventDefault();
        }
    }

    ValidateUserName();
    ValidateEmail();
    ValidateMessage();

    form.oninput = function () {
        userName = form.elements.user_name.value;
        email = form.elements.email.value;
        homepage = form.elements.homepage.value;
        message = form.elements.message.value.trim();

        ValidateUserName();
        ValidateEmail();
        ValidateMessage();
    };

    form.onsubmit = function() {
        ValidateForm();
    }
};