//Listen for form submit
document.getElementById('myForm').addEventListener('submit', saveBookmark);

//save bookmark
function saveBookmark(e) {
    // get form values
    var siteName = document.getElementById('siteName').value;
    var siteUrl = document.getElementById('siteUrl').value;

    if(!validateForm(siteName, siteUrl)) {
        return false;
    }
     
    var bookMark = {
        name: siteName,
        url: siteUrl
    }

    //Local storage test - how it works
    // localStorage.setItem('test', 'hello world')
    // console.log(localStorage.getItem('test'))
    // localStorage.removeItem('test')
    // console.log(localStorage.getItem('test'))

   //check id bookmark is null
    if(localStorage.getItem('bookmarks') === null){
        var bookMarks = [];
        bookMarks.push(bookMark);
        // send to local storage
        localStorage.setItem('bookmarks', JSON.stringify(bookMarks));
    } else {
        //get item from local storage
        var bookMarks = JSON.parse(localStorage.getItem('bookmarks'));
        // add bookmark to array
        bookMarks.push(bookMark)
        //reset it back to local storage
        localStorage.setItem('bookmarks', JSON.stringify(bookMarks));
    }

    //clear form
    document.getElementById('myForm').reset();

    //re-fetch bookmarks
    fetchBookmarks();
    
    // prevents form from submitting
    e.preventDefault();
}

//delete deleteBookmark
function deleteBookmark(url){
    console.log(url)
    var bookMarks = JSON.parse(localStorage.getItem('bookmarks'));
    //loop through bookmarks
    for(var i = 0; i < bookMarks.length; i++) {
        if(bookMarks[i].url == url) {
            //remove from array
            bookMarks.splice(i, 1);
        }
    }
    //reset it back to local storage
    localStorage.setItem('bookmarks', JSON.stringify(bookMarks));

    //re-fetch bookmarks
    fetchBookmarks();
}

// fetch Bookmarks
function fetchBookmarks(){
    var bookMarks = JSON.parse(localStorage.getItem('bookmarks'));

    //get output id
    var bookmarksResults = document.getElementById('bookmarksResults')

    // Build Output
    bookmarksResults.innerHTML = '';
    for(var i=0; i < bookMarks.length; i++){
        var name = bookMarks[i].name;
        var url = bookMarks[i].url;

        bookmarksResults.innerHTML += 
        '<div class="well">' +
        '<h3>' + name +
        ' <a class="btn btn-primary" target="_blank" href="'+ url +'">visit</a> ' +
        ' <a onclick="deleteBookmark(\''+url+'\')" class="btn btn-danger" href="#">delete</a> ' +
        '</h3>' +
        '</div>';
    }
}
//validate form
function validateForm(siteName, siteUrl) {
    if(!siteName || !siteUrl) {
        alert('Please fill in the form');
        return false; 
    }

    var expression = /[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)?/gi;
    var regex = new RegExp(expression);

    if(!siteUrl.match(regex)) {
        alert('Please usa a valid URL');
        return false
    }

    return true;
}