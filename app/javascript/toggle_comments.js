// app/assets/javascripts/toggle_comments.js
document.addEventListener('DOMContentLoaded', () => {

    const toggleButton = document.getElementById('toggle-comments');
    const commentsDiv = document.getElementById('comments');

    toggleButton.addEventListener('click', () => {

        if (commentsDiv.style.display === 'none') {

            commentsDiv.style.display = 'block';
            toggleButton.textContent = 'コメントを非表示';

        } else {
            
            commentsDiv.style.display = 'none';
            toggleButton.textContent = 'コメントをみる！';
        }
    });
});
