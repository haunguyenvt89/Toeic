$(document).ready(function(){
	$('.menu-question, .menu-cauhoi').addClass('active');

	themCauHoi();
	suaCH();
	xoaCH();
});

//add cauhoi
function themCauHoi()
{
	$('.btn-add-cauhoi').click(function(){		
		panel_them_cauhoi();
	});
}


function panel_them_cauhoi()
{
	$(".panel-add-cauhoi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-add-cauhoi'></div>");

	$(".wrap-add-cauhoi").click(function () {
		$(".panel-add-cauhoi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}

//edit cauhoi
function suaCH()
{
	$('.table-cauhoi').on('click', '.edit-cauhoi', function(){		
		panel_edit_cauhoi();
	});
}

function panel_edit_cauhoi()
{
	$(".panel-edit-cauhoi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-edit-cauhoi'></div>");

	$(".wrap-edit-cauhoi").click(function () {
		$(".panel-edit-cauhoi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}


//delete cauhoi
function xoaCH()
{
	$('.table-cauhoi').on('click', '.delete-cauhoi', function(){
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