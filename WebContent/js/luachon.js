$(document).ready(function(){
	$('.menu-question, .menu-cauhoi').addClass('active');

	themLuaChon();
	suaLuaChon();
	xoaLuaChon();
});

//add luachon
function themLuaChon()
{
	$('.btn-add-luachon').click(function(){		
		panel_them_luachon();
	});
}


function panel_them_luachon()
{
	$(".panel-add-luachon").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-add-luachon'></div>");

	$(".wrap-add-luachon").click(function () {
		$(".panel-add-luachon").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}

//edit luachon
function suaLuaChon()
{
	$('.table-luachon').on('click', '.edit-luachon', function(){		
		panel_edit_luachon();
	});
}

function panel_edit_luachon()
{
	$(".panel-edit-luachon").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-edit-luachon'></div>");

	$(".wrap-edit-luachon").click(function () {
		$(".panel-edit-luachon").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}


//delete luachon
function xoaLuaChon()
{
	$('.table-luachon').on('click', '.delete-luachon', function(){
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