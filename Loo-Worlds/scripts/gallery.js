var pages, currentPage, currentPageNum, paginator;

function init() {
    pages = document.getElementsByClassName("comic-page");
    if(pages.length > 0) {
        var comicParams = new URLSearchParams(window.location.search);
        var comicKeys = Array.from(comicParams.keys());
        var comicValues = Array.from(comicParams.values());
        var paramsIndex = comicKeys.indexOf("page");
        var pageIndex = parseInt(comicValues[paramsIndex]);

        document.getElementsByClassName("comic-controls")[0].innerHTML = 
        '<a onclick="setPage(currentPageNum - 1);" href="#comic-page" style="width: 15%; display: inline-block;">Previous</a>' +
        '<span class="comic-paginator" style="width: 70%; display: inline-block; text-align: center;"></span>' + 
        '<a onclick="setPage(currentPageNum + 1);" href="#comic-page" style="width: 15%; display: inline-block; text-align: right;">Next</a>';
        paginator = document.getElementsByClassName("comic-paginator")[0];
        document.getElementsByClassName("comic-allpages")[0].innerHTML = allPages();
        for(var i = 0; i<pages.length; i++) {
            pages[i].hidden = true;
        }

        if(paramsIndex == -1 || pageIndex < 0 || pageIndex > pages.length || isNaN(pageIndex)) {
            pages[0].hidden = false;
            currentPage = pages[0];
            currentPageNum = 0;
            paginatorUpdate();
        } else {
            pages[pageIndex - 1].hidden = false;
            currentPage = pages[pageIndex - 1];
            currentPageNum = pageIndex - 1;
            paginatorUpdate();
        }

        document.getElementById("comic-container").onclick = function(event) {
            var target = event.target;
            if(target.className == "comic-page") {
                setPage(currentPageNum + 1);
            }
        }

        document.onkeydown = function(event) {
            if(event.keyCode == 32) {
                return false;
            }
        }

        document.onkeypress = function(event) {
            if(event.keyCode == 32) {
                return false;
            }
        }

        document.onkeyup = function(event) {
            if(event.keyCode == 39) {
                setPage(currentPageNum + 1);
                document.getElementById("comic-page").scrollIntoView();
            }
            if(event.keyCode == 37) {
                setPage(currentPageNum - 1);
                document.getElementById("comic-page").scrollIntoView();
            }
            if(event.keyCode == 32) {
                setPage(currentPageNum + 1);
                document.getElementById("comic-page").scrollIntoView();
            }
        }
    }
}

function setPage(pageNum) {
    if(pageNum < 0 || pageNum >= pages.length) {
        return;
    }
    currentPage.hidden = true;
    currentPage = pages[pageNum];
    currentPageNum = pageNum;
    currentPage.hidden = false;
    paginatorUpdate();
}

function paginatorUpdate() {
    paginator.innerHTML = (currentPageNum + 1) + " / " + pages.length;
}

function allPages() {
    let result = "";
    for(let i = 0; i < pages.length; i++) {
        result += ('<a href = "#comic-page" onclick="setPage(' + i + ')">' + '<img style="object-fit:cover;" width="80px" height="80px" src="' + pages[i].src + '"></img></a> ')
    }
    return result;
}

document.addEventListener("DOMContentLoaded", init);