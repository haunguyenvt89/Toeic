$(document).ready(function(){
	$('.menu-dethi').addClass('active');

	themDeThi();
	suaDeThi();
	xoaDeThi();
});

//add dethi
function themDeThi()
{
	$('.btn-add-dethi').click(function(){		
		panel_them_dethi();
	});
}


function panel_them_dethi()
{
	$(".panel-add-dethi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-add-dethi'></div>");

	$(".wrap-add-dethi").click(function () {
		$(".panel-add-dethi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}

//edit dethi
function suaDeThi()
{
	$('.table-dethi').on('click', '.edit-dethi', function(){		
		panel_edit_dethi();
	});
}

function panel_edit_dethi()
{
	$(".panel-edit-dethi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-edit-dethi'></div>");

	$(".wrap-edit-dethi").click(function () {
		$(".panel-edit-dethi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}


//delete dethi
function xoaDeThi()
{
	$('.table-dethi').on('click', '.delete-dethi', function(){
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