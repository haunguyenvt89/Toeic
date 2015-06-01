$(document).ready(function(){
	$('.menu-question, .menu-cauhoi-loaicauhoi').addClass('active');

	themLoaiCauHoi();
	suaLoaiCauHoi();
	xoaLoaiCauHoi();
});

//add loaicauhoi
function themLoaiCauHoi()
{
	$('.btn-add-loaicauhoi').click(function(){		
		panel_them_loaicauhoi();
	});
}


function panel_them_loaicauhoi()
{
	$(".panel-add-loaicauhoi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-add-loaicauhoi'></div>");

	$(".wrap-add-loaicauhoi").click(function () {
		$(".panel-add-loaicauhoi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}

//edit loaicauhoi
function suaLoaiCauHoi()
{
	$('.table-loaicauhoi').on('click', '.edit-loaicauhoi', function(){		
		panel_edit_loaicauhoi();
	});
}

function panel_edit_loaicauhoi()
{
	$(".panel-edit-loaicauhoi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-edit-loaicauhoi'></div>");

	$(".wrap-edit-loaicauhoi").click(function () {
		$(".panel-edit-loaicauhoi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}


//delete loaicauhoi
function xoaLoaiCauHoi()
{
	$('.table-loaicauhoi').on('click', '.delete-loaicauhoi', function(){
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