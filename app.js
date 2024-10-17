$(function () {
    // new DataTable("#mytable")



    // Get data
    $('body').on('click', "#get_rows", function () {
        $.ajax({
            url: "action.php",
            type: "get",
            data: { action: 'get_rows' },
            dataType: "json",
            success: function (res) {
                $('#heading').text("All Records from Customer")
                $('#result').empty()
                $.each(res, function (ind, val) {
                    $('#result').append(`               
                    <tr>
                    <td>${val.id}</td>
                    <td>${val.name}</td>
                    <td>${val.email}</td>
                    <td>${val.phone}</td>
                    <td>${val.address}</td>
                    <td><button value=${val.id} id="edit" ><img src="images/edit.png" height="30px"></button></td>
                    </tr>
                   `)

                })
            }
        })
    })

    // Editing 
 $('body').on('click','#edit',function(){
    $(this).attr('data-bs-toggle', 'modal')
    $(this).attr('data-bs-target','#exampleModal')
    let id = $(this).val()
        $.ajax({
            url: 'action.php',
            type: 'get',
            data: { action: 'check_avaibility', data: id },
            dataType: 'json',
        success: function (res) {
           $("#id").val(res.id)
           $("#name").val(res.name)
           $("#email").val(res.email)
           $("#phone").val(res.phone)
           $("#address").val(res.address)
        
        }
    })
 })


    //Get Sorted Data
    $('body').on('click', "#rows_sorted", function () {
        $.ajax({
            url: "action.php",
            type: 'get',
            data: { action: 'get_sorted_rows' },
            dataType: 'json',
            success: function (res) {
                $('#heading').text("Records Sort in Descending (on name)")
                $('#result').empty()
                $.each(res, function (ind, val) {
                    $('#result').append(`
                    <tr>
                    <td>${val.id}</td>
                    <td>${val.name}</td>
                    <td>${val.email}</td>
                    <td>${val.phone}</td>
                    <td>${val.address}</td>
                    </tr>
                    `)
                })
            }
        })

    })

    // Records like 
    $('body').on("click", "#rows_like", function () {
        $.ajax({
            url: 'action.php',
            type: 'get',
            data: { action: 'rows_like' },
            dataType: 'json',
            success: function (res) {
                $('#heading').text("Rows name LIKE %ra%")
                $('#result').empty()
                $.each(res, function (ind, val) {
                    $('#result').append(`
                    <tr>
                    <td>${val.id}</td>
                    <td>${val.name}</td>
                    <td>${val.email}</td>
                    <td>${val.phone}</td>
                    <td>${val.address}</td>
                    </tr>
                    `)
                })
            }
        })
    })

    // Distinct Row
    $('body').on("click", "#distinct_row", function () {
        $.ajax({
            url: 'action.php',
            type: 'get',
            data: { action: 'distinct_row' },
            dataType: 'json',
            success: function (res) {
                $('#heading').text("Distinct Rows")
                $('#result').empty()
                $.each(res, function (ind, val) {
                    $('#result').append(`
                    <tr>
                    <td>${val.id}</td>
                    <td>${val.name}</td>
                    <td>${val.email}</td>
                    <td>${val.phone}</td>
                    <td>${val.address}</td>
                    </tr>
                    `)
                })
            }
        })
    })

    // Single Row
    $('body').on("click", "#single_row", function () {
        $.ajax({
            url: 'action.php',
            type: 'get',
            data: { action: 'single_row' },
            dataType: 'json',
            success: function (res) {
                $('#heading').text("Single Rows")
                $('#result').empty()
                $('#result').append(`
                    <tr>
                    <td>${res.id}</td>
                    <td>${res.name}</td>
                    <td>${res.email}</td>
                    <td>${res.phone}</td>
                    <td>${res.address}</td>
                    </tr>
                    `)

            }
        })
    })

    // Total Count
    $('body').on('click', "#total_row", function () {
        $.ajax({
            url: 'action.php',
            type: 'get',
            data: { action: 'total_count' },
            dataType: 'json',
            success: function (res) {
                $('#result').empty()
                $('#result').html(`<center><h4>There are Total <b>${res} Rows</b> available in the Customer Table</h4></center>`)

            }
        })
    })

    //Insert Data Or Update Data
    $('body').on('submit', '#myform', function (e) {
        e.preventDefault();
        let formdata = $(this).serialize();          
        $.ajax({
            url: 'action.php',
            type: 'post',
            data: { action: "insert", data: formdata },
            dataType: 'json',
            success: function (res) {
                $('#myform').trigger('reset');
                alert("Data Inserted");
            },
            
        });
    });
    

    //find by Id
    $('body').on('click', '#find_by_id', function () {
        $.ajax({
            url: 'action.php',
            type: 'get',
            dataType: 'json',
            data: {
                action: "find_by_id"
            },
            success: function (res) {
                $('#heading').text("Row find By Id (11, 15)")
                $('#result').empty()
                $.each(res, function (ind, val) {
                    $('#result').append(`
                    <tr>
                    <td>${val.id}</td>
                    <td>${val.name}</td>
                    <td>${val.email}</td>
                    <td>${val.phone}</td>
                    <td>${val.address}</td>
                    </tr>
                    `)
                })
            }
        })
    })

    //Check Avaibility
    $('body').on('click', '#check_avaibility', function () {
        let id = prompt("Enter id")
        $.ajax({
            url: 'action.php',
            type: 'get',
            data: { action: 'check_avaibility', data: id },
            dataType: 'json',
            success: function (res) {
                if (res) {
                    $('#heading').text("Check Avaibility")
                    $('#result').empty()
                    $('#result').append(`
                        <tr>
                        <td>${res.id}</td>
                        <td>${res.name}</td>
                        <td>${res.email}</td>
                        <td>${res.phone}</td>
                        <td>${res.address}</td>
                        </tr>
                        `)
                } else {
                    $('#result').empty()
                    $('thead').hide()
                    $('#result').html(`<center><h4 class="m-5">Not Found id=${id} in the Customer Table</h4></center>`)



                }

            }
        })
    })

    // Delete Record
    $('body').on('click',"#delete_record",function(){
        let id = prompt("Enter id you want to delete")        
        $.ajax({
            url:'action.php',
            type:'get',
            data:{action:'delete', data:id},
            success:function(res){
                  
                $('thead').hide()
                $('result').empty()                               
                    $("#result").html(`<div class="alert alert-danger" role="alert">${res}</div>`)                   
                                  
               

            }
        })

    })


})