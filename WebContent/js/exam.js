$(document).ready(function(){

	$('#exam-content').find('.content-5, .content-6, .content-7').hide();

	var clock = $('#countdown').FlipClock(10, {
		clockFace: 'MinuteCounter',
		countdown: true
	});

	var check = true;

	setTimeout(function(){
		clock.setTime(10);
		$('#exam-content').find('.content-1, .content-2, .content-3, .content-4').hide();
		$('#exam-content').find('.content-5, .content-6, .content-7').show();
		clock.start();
		setTimeout(function(){
			swal('Hết giờ', '', 'warning');
		}, 10000);
	}, 11000);
});

function clock1()
{
	$('#countdown').FlipClock(10, {
		clockFace: 'MinuteCounter',
		countdown: true
	});
}