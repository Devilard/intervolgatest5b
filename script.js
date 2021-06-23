/* 
    вешаем событие на кнопку Добавить страну через анонимную функцию
    Функция будет получать стили элемента формы добавления, проверять, скрыт ли блок с формой,
    если да, то при нажатии будет показывать 
*/
document.querySelector('#submit').onclick = function()
{
    const element = document.querySelector('.testp');
    const elementStyle = getComputedStyle(element);

    if(elementStyle.display == 'none')
    {
        element.style.display = "block";
         const element2 = document.querySelector('.msg');
        const elementStyle2 = getComputedStyle(element);
        element2.style.display = "none";
    }
    else
    {
        element.style.display = "none";



    }
}

