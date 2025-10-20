// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

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

//= require toggle_comments

require("chartkick")
require("chart.js")