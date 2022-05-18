function reviewReadValues()
{
    r_name = review_form.review_name.value;
    r_email = review_form.review_email.value;
    r_stars = review_form.review_stars.value;
    r_number = review_form.review_number.value;
    r_address = review_form.review_address.value;
    r_message = review_form.review_message.value;

    if(r_name == ''){
        window.alert('please enter name')
    }

    if(r_email == '')
    {
        window.alert('please enter email')
    }

    if(r_stars == '')
    {
        window.alert('please enter number between 1 to 5')
    }

    if(r_number == '')
    {
        window.alert('please enter mobile number')
    }

    if(r_address == '')
    {
        window.alert('please enter address')
    }

    if(r_message == '')
    {
        window.alert('please enter your review')
    }

    if(r_stars > 5 || r_stars < 1)
    {
        window.alert('please enter 1-5');
    }

    if(r_number.length > 11)
    {
        window.alert('please enter 10 digit number')
    }
}