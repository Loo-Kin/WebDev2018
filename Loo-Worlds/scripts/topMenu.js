window.onload = function() {
    var topMenu = document.getElementById("topMenu");
    
};

document.onclick = function(event) {
    var target = event.target;

    while (target != document) {
        if(target.id === "topMenuHamburger") {
            showMenu();
            return
        } else {
            target = target.parentNode;
        }
    }
    hideMenu();
}

function showMenu() {
    topMenu.setAttribute("style", "display: block;");
    console.log("showMenu");
}

function hideMenu() {
    topMenu.setAttribute("style", "");
    console.log("hideMenu");
}