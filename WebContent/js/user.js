$(document).ready(function(){
	start();	
	addUser();
	editUser();
	deleteUser();
});

function start()
{
	$('.menu-account, .menu-account-user').addClass('active');
}

//add user
function addUser()
{
	$('.btn-add-user').click(function(){		
		panel_add_user();
	});
}


function panel_add_user()
{
	$(".panel-add-user").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-add-user'></div>");

	$(".wrap-add-user").click(function () {
		$(".panel-add-user").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}

//edit user
function editUser()
{
	$('.table-user').on('click', '.edit-user', function(){		
		panel_edit_user();
	});
}

function panel_edit_user()
{
	$(".panel-edit-user").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-edit-user'></div>");

	$(".wrap-edit-user").click(function () {
		$(".panel-edit-user").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}


//delete user
function deleteUser()
{
	$('.table-user').on('click', '.delete-user', function(){
		var row = $(this).parent().parent();
		var table = row.parent();		
		swal({
			title: "Xóa người dùng",
			text: "",
			type: "warning",   
			showCancelButton: true,
			cancelButtonText: 'Hủy bỏ', 
			confirmButtonColor: "#DD6B55",   
			confirmButtonText: "Đồng ý",   
			closeOnConfirm: false 
		}, 
		function(){
			//ajax
			row.remove();
			table.find('tr').not(':first').each(function(){
				var td_first = parseInt($(this).find('td:first-child').html());
				if(td_first > parseInt(row.find('td:first-child').html()))
				{
					td_first = td_first - 1;
					$(this).find('td:first-child').html(td_first);
				}	
			});
			swal('Đã xóa', '', 'success');
		});
	});
}