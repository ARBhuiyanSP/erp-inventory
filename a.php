<?php include 'header.php' ?>


<input type="number" name="rate" id="rate" />
<input type="number" name="box" id="box" />
<input type="number" name="amount" id="amount" readonly />

<script>
$('#rate, #box').keyup(function(){
    var rate = parseFloat($('#rate').val()) || 0;
    var box = parseFloat($('#box').val()) || 0;

    $('#amount').val(rate * box);    
});
</script>
<?php include 'footer.php' ?>