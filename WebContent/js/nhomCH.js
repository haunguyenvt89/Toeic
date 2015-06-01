$(document).ready(function(){
	$('.menu-question, .menu-cauhoi-nhomcauhoi').addClass('active');

	themNhomCH();
	suaNhomCH();
	xoaNhomCH();
});

function start()
{
	
}

//add nhomcauhoi
function themNhomCH()
{
	$('.btn-add-nhomcauhoi').click(function(){		
		panel_them_nhomcauhoi();
	});
}


function panel_them_nhomcauhoi()
{
	$(".panel-add-nhomcauhoi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-add-nhomcauhoi'></div>");

	$(".wrap-add-nhomcauhoi").click(function () {
		$(".panel-add-nhomcauhoi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}

//edit nhomcauhoi
function suaNhomCH()
{
	$('.table-nhomcauhoi').on('click', '.edit-nhomcauhoi', function(){		
		panel_edit_nhomcauhoi();
	});
}

function panel_edit_nhomcauhoi()
{
	$(".panel-edit-nhomcauhoi").show().animate({"top":"100px"},500);
	$("body").prepend("<div class='wrap-edit-nhomcauhoi'></div>");

	$(".wrap-edit-nhomcauhoi").click(function () {
		$(".panel-edit-nhomcauhoi").animate({"top":"-100%"},500).hide();
		$(this).remove();
	});
}


//delete nhomcauhoi
function xoaNhomCH()
{
	$('.table-nhomcauhoi').on('click', '.delete-nhomcauhoi', function(){
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