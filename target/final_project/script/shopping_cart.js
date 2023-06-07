

const table_row = document.querySelectorAll('.table_row');
function caculator(){
    for ( var i = 0 ; i < table_row.length; i++){
        var column_3 = parseFloat(table_row[i].querySelector('.price_product').textContent);
        var column_5 = table_row[i].querySelector('.column-5');
        var quantity = table_row[i].querySelector('input');
        column_5.textContent = column_3 * parseInt(quantity.value) + "$";
    }
}
caculator();
