$(document).ready(function(){
	$('.menu-account, .menu-account-admin').addClass('active');
	
	addAdmin();
	editAdmin();
	deleteAdmin();
});

//add admin
function addAdmin()
{
	$('.btn-add-admin').click(function(){		
		panel_add_admin();
	});
}


function panel_add_admin()
{
	$(".panel-add-admin").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-add-admin'></div>");

	$(".wrap-add-admin").click(function () {
		$(".panel-add-admin").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}

//edit admin
function editAdmin()
{
	$('.table-admin').on('click', '.edit-admin', function(){		
		panel_edit_admin();
	});
}

function panel_edit_admin()
{
	$(".panel-edit-admin").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-edit-admin'></div>");

	$(".wrap-edit-admin").click(function () {
		$(".panel-edit-admin").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}


//delete admin
function deleteAdmin()
{
	$('.table-admin').on('click', '.delete-admin', function(){
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