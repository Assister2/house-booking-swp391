function readURL(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap').hide();

			$('.file-upload-image').attr('src', e.target.result);
			$('.file-upload-content').show();

			$('.image-title').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload();
	}
}

function removeUpload() {
	$('.file-upload-input')
		.replaceWith($('.file-upload-input').clone());
	$('.file-upload-content').hide();
	$('.image-upload-wrap').show();
}
$('.image-upload-wrap').bind('dragover', function() {
	$('.image-upload-wrap').addClass('image-dropping');
});
$('.image-upload-wrap').bind('dragleave', function() {
	$('.image-upload-wrap').removeClass('image-dropping');
});


function readURL_1_1(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_1').hide();

			$('.file-upload-image_1_1').attr('src', e.target.result);
			$('.file-upload-content_1_1').show();

			$('.image-title_1_1').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_1();
	}
}

function removeUpload_1_1() {
	$('.file-upload-input_1_1').replaceWith(
		$('.file-upload-input_1_1').clone());
	$('.file-upload-content_1_1').hide();
	$('.image-upload-wrap_1_1').show();
}
$('.image-upload-wrap_1_1').bind('dragover_1_1', function() {
	$('.image-upload-wrap_1_1').addClass('image-dropping_1_1');
});
$('.image-upload-wrap_1_1').bind('dragleave_1_1', function() {
	$('.image-upload-wrap_1_1').removeClass('image-dropping_1_1');
});

function readURL_2_1(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_1').hide();

			$('.file-upload-image_2_1').attr('src', e.target.result);
			$('.file-upload-content_2_1').show();

			$('.image-title_2_1').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_1();
	}
}

function removeUpload_2_1() {
	$('.file-upload-input_2_1').replaceWith(
		$('.file-upload-input_2_1').clone());
	$('.file-upload-content_2_1').hide();
	$('.image-upload-wrap_2_1').show();
}
$('.image-upload-wrap_2_1').bind('dragover_2_1', function() {
	$('.image-upload-wrap_2_1').addClass('image-dropping_2_1');
});
$('.image-upload-wrap_2_1').bind('dragleave_2_1', function() {
	$('.image-upload-wrap_2_1').removeClass('image-dropping_2_1');
});


function readURL_3_1(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_1').hide();

			$('.file-upload-image_3_1').attr('src', e.target.result);
			$('.file-upload-content_3_1').show();

			$('.image-title_3_1').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_1();
	}
}

function removeUpload_3_1() {
	$('.file-upload-input_3_1').replaceWith(
		$('.file-upload-input_3_1').clone());
	$('.file-upload-content_3_1').hide();
	$('.image-upload-wrap_3_1').show();
}
$('.image-upload-wrap_3_1').bind('dragover_3_1', function() {
	$('.image-upload-wrap_3_1').addClass('image-dropping_3_1');
});
$('.image-upload-wrap_3_1').bind('dragleave_3_1', function() {
	$('.image-upload-wrap_3_1').removeClass('image-dropping_3_1');
});


function readURL_1_2(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_2').hide();

			$('.file-upload-image_1_2').attr('src', e.target.result);
			$('.file-upload-content_1_2').show();

			$('.image-title_1_2').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_2();
	}
}

function removeUpload_1_2() {
	$('.file-upload-input_1_2').replaceWith(
		$('.file-upload-input_1_2').clone());
	$('.file-upload-content_1_2').hide();
	$('.image-upload-wrap_1_2').show();
}
$('.image-upload-wrap_1_2').bind('dragover_1_2', function() {
	$('.image-upload-wrap_1_2').addClass('image-dropping_1_2');
});
$('.image-upload-wrap_1_2').bind('dragleave_2_2', function() {
	$('.image-upload-wrap_1_2').removeClass('image-dropping_1_2');	
});


function readURL_2_2(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_2').hide();

			$('.file-upload-image_2_2').attr('src', e.target.result);
			$('.file-upload-content_2_2').show();

			$('.image-title_2_2').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_2();
	}
}

function removeUpload_2_2() {
	$('.file-upload-input_2_2').replaceWith(
		$('.file-upload-input_2_2').clone());
	$('.file-upload-content_2_2').hide();
	$('.image-upload-wrap_2_2').show();
}
$('.image-upload-wrap_2_2').bind('dragover_2_2', function() {
	$('.image-upload-wrap_2_2').addClass('image-dropping_2_2');
});
$('.image-upload-wrap_2_2').bind('dragleave_2_2', function() {
	$('.image-upload-wrap_2_2').removeClass('image-dropping_2_2');
});


function removeUpload_2_2() {
	$('.file-upload-input_2_2').replaceWith(
		$('.file-upload-input_2_2').clone());
	$('.file-upload-content_2_2').hide();
	$('.image-upload-wrap_2_2').show();
}
$('.image-upload-wrap_2_2').bind('dragover_2_2', function() {
	$('.image-upload-wrap_2_2').addClass('image-dropping_2_2');
});
$('.image-upload-wrap_2_2').bind('dragleave_2_2', function() {
	$('.image-upload-wrap_2_2').removeClass('image-dropping_2_2');
});


function readURL_3_2(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_2').hide();

			$('.file-upload-image_3_2').attr('src', e.target.result);
			$('.file-upload-content_3_2').show();

			$('.image-title_3_2').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_2();
	}
}

function removeUpload_1_3() {
	$('.file-upload-input_1_3').replaceWith(
		$('.file-upload-input_1_3').clone());
	$('.file-upload-content_1_3').hide();
	$('.image-upload-wrap_1_3').show();
}
$('.image-upload-wrap_1_3').bind('dragover_1_3', function() {
	$('.image-upload-wrap_1_3').addClass('image-dropping_1_3');
});
$('.image-upload-wrap_1_3').bind('dragleave_1_3', function() {
	$('.image-upload-wrap_1_3').removeClass('image-dropping_1_3');
});


function readURL_1_3(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_3').hide();

			$('.file-upload-image_1_3').attr('src', e.target.result);
			$('.file-upload-content_1_3').show();

			$('.image-title_1_3').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_3();
	}
}

function removeUpload_1_3() {
	$('.file-upload-input_1_3').replaceWith(
		$('.file-upload-input_1_3').clone());
	$('.file-upload-content_1_3').hide();
	$('.image-upload-wrap_1_3').show();
}
$('.image-upload-wrap_1_3').bind('dragover_1_3', function() {
	$('.image-upload-wrap_1_3').addClass('image-dropping_1_3');
});
$('.image-upload-wrap_1_3').bind('dragleave_1_3', function() {
	$('.image-upload-wrap_1_3').removeClass('image-dropping_1_3');
});



function readURL_2_3(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_3').hide();

			$('.file-upload-image_2_3').attr('src', e.target.result);
			$('.file-upload-content_2_3').show();

			$('.image-title_2_3').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_3();
	}
}

function removeUpload_2_3() {
	$('.file-upload-input_2_3').replaceWith(
		$('.file-upload-input_2_3').clone());
	$('.file-upload-content_2_3').hide();
	$('.image-upload-wrap_2_3').show();
}
$('.image-upload-wrap_2_3').bind('dragover_2_3', function() {
	$('.image-upload-wrap_2_3').addClass('image-dropping_2_3');
});
$('.image-upload-wrap_2_3').bind('dragleave_2_3', function() {
	$('.image-upload-wrap_2_3').removeClass('image-dropping_2_3');
});


function readURL_3_3(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_3').hide();

			$('.file-upload-image_3_3').attr('src', e.target.result);
			$('.file-upload-content_3_3').show();

			$('.image-title_3_3').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_3();
	}
}

function removeUpload_3_3() {
	$('.file-upload-input_3_3').replaceWith(
		$('.file-upload-input_3_3').clone());
	$('.file-upload-content_3_3').hide();
	$('.image-upload-wrap_3_3').show();
}
$('.image-upload-wrap_3_3').bind('dragover_3_3', function() {
	$('.image-upload-wrap_3_3').addClass('image-dropping_3_3');
});
$('.image-upload-wrap_3_3').bind('dragleave_3_3', function() {
	$('.image-upload-wrap_3_3').removeClass('image-dropping_3_3');
});



function readURL_1_4(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_4').hide();

			$('.file-upload-image_1_4').attr('src', e.target.result);
			$('.file-upload-content_1_4').show();

			$('.image-title_1_4').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_4();
	}
}

function removeUpload_1_4() {
	$('.file-upload-input_1_4').replaceWith(
		$('.file-upload-input_1_4').clone());
	$('.file-upload-content_1_4').hide();
	$('.image-upload-wrap_1_4').show();
}
$('.image-upload-wrap_1_4').bind('dragover_1_4', function() {
	$('.image-upload-wrap_1_4').addClass('image-dropping_1_4');
});
$('.image-upload-wrap_1_4').bind('dragleave_1_4', function() {
	$('.image-upload-wrap_1_4').removeClass('image-dropping_1_4');
});



function readURL_2_4(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_4').hide();

			$('.file-upload-image_2_4').attr('src', e.target.result);
			$('.file-upload-content_2_4').show();

			$('.image-title_2_4').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_4();
	}
}

function removeUpload_2_4() {
	$('.file-upload-input_2_4').replaceWith(
		$('.file-upload-input_2_4').clone());
	$('.file-upload-content_2_4').hide();
	$('.image-upload-wrap_2_4').show();
}
$('.image-upload-wrap_2_4').bind('dragover_2_4', function() {
	$('.image-upload-wrap_2_4').addClass('image-dropping_2_4');
});
$('.image-upload-wrap_2_4').bind('dragleave_2_4', function() {
	$('.image-upload-wrap_2_4').removeClass('image-dropping_2_4');
});



function readURL_3_4(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_4').hide();

			$('.file-upload-image_3_4').attr('src', e.target.result);
			$('.file-upload-content_3_4').show();

			$('.image-title_3_4').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_4();
	}
}

function removeUpload_3_4() {
	$('.file-upload-input_3_4').replaceWith(
		$('.file-upload-input_3_4').clone());
	$('.file-upload-content_3_4').hide();
	$('.image-upload-wrap_3_4').show();
}
$('.image-upload-wrap_3_4').bind('dragover_3_4', function() {
	$('.image-upload-wrap_3_4').addClass('image-dropping_3_4');
});
$('.image-upload-wrap_3_4').bind('dragleave_3_4', function() {
	$('.image-upload-wrap_3_4').removeClass('image-dropping_3_4');
});



function readURL_1_5(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_5').hide();

			$('.file-upload-image_1_5').attr('src', e.target.result);
			$('.file-upload-content_1_5').show();

			$('.image-title_1_5').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_5();
	}
}

function removeUpload_1_5() {
	$('.file-upload-input_1_5').replaceWith(
		$('.file-upload-input_1_5').clone());
	$('.file-upload-content_1_5').hide();
	$('.image-upload-wrap_1_5').show();
}
$('.image-upload-wrap_1_5').bind('dragover_1_5', function() {
	$('.image-upload-wrap_1_5').addClass('image-dropping_1_5');
});
$('.image-upload-wrap_1_5').bind('dragleave_1_5', function() {
	$('.image-upload-wrap_1_5').removeClass('image-dropping_1_5');
});



function readURL_2_5(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_5').hide();

			$('.file-upload-image_2_5').attr('src', e.target.result);
			$('.file-upload-content_2_5').show();

			$('.image-title_2_5').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_5();
	}
}

function removeUpload_2_5() {
	$('.file-upload-input_2_5').replaceWith(
		$('.file-upload-input_2_5').clone());
	$('.file-upload-content_2_5').hide();
	$('.image-upload-wrap_2_5').show();
}
$('.image-upload-wrap_2_5').bind('dragover_2_5', function() {
	$('.image-upload-wrap_2_5').addClass('image-dropping_2_5');
});
$('.image-upload-wrap_2_5').bind('dragleave_2_5', function() {
	$('.image-upload-wrap_2_5').removeClass('image-dropping_2_5');
});



function readURL_3_5(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_5').hide();

			$('.file-upload-image_3_5').attr('src', e.target.result);
			$('.file-upload-content_3_5').show();

			$('.image-title_3_5').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_5();
	}
}

function removeUpload_3_5() {
	$('.file-upload-input_3_5').replaceWith(
		$('.file-upload-input_3_5').clone());
	$('.file-upload-content_3_5').hide();
	$('.image-upload-wrap_3_5').show();
}
$('.image-upload-wrap_3_5').bind('dragover_3_5', function() {
	$('.image-upload-wrap_3_5').addClass('image-dropping_3_5');
});
$('.image-upload-wrap_3_5').bind('dragleave_3_5', function() {
	$('.image-upload-wrap_3_5').removeClass('image-dropping_3_5');
});



function readURL_1_6(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_6').hide();

			$('.file-upload-image_1_6').attr('src', e.target.result);
			$('.file-upload-content_1_6').show();

			$('.image-title_1_6').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_6();
	}
}

function removeUpload_1_6() {
	$('.file-upload-input_1_6').replaceWith(
		$('.file-upload-input_1_6').clone());
	$('.file-upload-content_1_6').hide();
	$('.image-upload-wrap_1_6').show();
}
$('.image-upload-wrap_1_6').bind('dragover_1_6', function() {
	$('.image-upload-wrap_1_6').addClass('image-dropping_1_6');
});
$('.image-upload-wrap_1_6').bind('dragleave_1_6', function() {
	$('.image-upload-wrap_1_6').removeClass('image-dropping_1_6');
});



function readURL_2_6(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_6').hide();

			$('.file-upload-image_2_6').attr('src', e.target.result);
			$('.file-upload-content_2_6').show();

			$('.image-title_2_6').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_6();
	}
}

function removeUpload_2_6() {
	$('.file-upload-input_2_6').replaceWith(
		$('.file-upload-input_2_6').clone());
	$('.file-upload-content_2_6').hide();
	$('.image-upload-wrap_2_6').show();
}
$('.image-upload-wrap_2_6').bind('dragover_2_6', function() {
	$('.image-upload-wrap_2_6').addClass('image-dropping_2_6');
});
$('.image-upload-wrap_2_6').bind('dragleave_2_6', function() {
	$('.image-upload-wrap_2_6').removeClass('image-dropping_2_6');
});



function readURL_3_6(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_6').hide();

			$('.file-upload-image_3_6').attr('src', e.target.result);
			$('.file-upload-content_3_6').show();

			$('.image-title_3_6').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_6();
	}
}

function removeUpload_3_6() {
	$('.file-upload-input_3_6').replaceWith(
		$('.file-upload-input_3_6').clone());
	$('.file-upload-content_3_6').hide();
	$('.image-upload-wrap_3_6').show();
}
$('.image-upload-wrap_3_6').bind('dragover_3_6', function() {
	$('.image-upload-wrap_3_6').addClass('image-dropping_3_6');
});
$('.image-upload-wrap_3_6').bind('dragleave_3_6', function() {
	$('.image-upload-wrap_3_6').removeClass('image-dropping_3_6');
});



function readURL_1_7(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_7').hide();

			$('.file-upload-image_1_7').attr('src', e.target.result);
			$('.file-upload-content_1_7').show();

			$('.image-title_1_7').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_7();
	}
}

function removeUpload_1_7() {
	$('.file-upload-input_1_7').replaceWith(
		$('.file-upload-input_1_7').clone());
	$('.file-upload-content_1_7').hide();
	$('.image-upload-wrap_1_7').show();
}
$('.image-upload-wrap_1_7').bind('dragover_1_7', function() {
	$('.image-upload-wrap_1_7').addClass('image-dropping_1_7');
});
$('.image-upload-wrap_1_7').bind('dragleave_1_7', function() {
	$('.image-upload-wrap_1_7').removeClass('image-dropping_1_7');
});



function readURL_2_7(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_7').hide();

			$('.file-upload-image_2_7').attr('src', e.target.result);
			$('.file-upload-content_2_7').show();

			$('.image-title_2_7').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_7();
	}
}

function removeUpload_2_7() {
	$('.file-upload-input_2_7').replaceWith(
		$('.file-upload-input_2_7').clone());
	$('.file-upload-content_2_7').hide();
	$('.image-upload-wrap_2_7').show();
}
$('.image-upload-wrap_2_7').bind('dragover_2_7', function() {
	$('.image-upload-wrap_2_7').addClass('image-dropping_2_7');
});
$('.image-upload-wrap_2_7').bind('dragleave_2_7', function() {
	$('.image-upload-wrap_2_7').removeClass('image-dropping_2_7');
});



function readURL_3_7(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_7').hide();

			$('.file-upload-image_3_7').attr('src', e.target.result);
			$('.file-upload-content_3_7').show();

			$('.image-title_3_7').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_7();
	}
}

function removeUpload_3_7() {
	$('.file-upload-input_3_7').replaceWith(
		$('.file-upload-input_3_7').clone());
	$('.file-upload-content_3_7').hide();
	$('.image-upload-wrap_3_7').show();
}
$('.image-upload-wrap_3_7').bind('dragover_3_7', function() {
	$('.image-upload-wrap_3_7').addClass('image-dropping_3_7');
});
$('.image-upload-wrap_3_7').bind('dragleave_3_7', function() {
	$('.image-upload-wrap_3_7').removeClass('image-dropping_3_7');
});



function readURL_1_8(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_8').hide();

			$('.file-upload-image_1_8').attr('src', e.target.result);
			$('.file-upload-content_1_8').show();

			$('.image-title_1_8').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_8();
	}
}

function removeUpload_1_8() {
	$('.file-upload-input_1_8').replaceWith(
		$('.file-upload-input_1_8').clone());
	$('.file-upload-content_1_8').hide();
	$('.image-upload-wrap_1_8').show();
}
$('.image-upload-wrap_1_8').bind('dragover_1_8', function() {
	$('.image-upload-wrap_1_8').addClass('image-dropping_1_8');
});
$('.image-upload-wrap_1_8').bind('dragleave_1_8', function() {
	$('.image-upload-wrap_1_8').removeClass('image-dropping_1_8');
});



function readURL_2_8(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_8').hide();

			$('.file-upload-image_2_8').attr('src', e.target.result);
			$('.file-upload-content_2_8').show();

			$('.image-title_2_8').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_8();
	}
}

function removeUpload_2_8() {
	$('.file-upload-input_2_8').replaceWith(
		$('.file-upload-input_2_8').clone());
	$('.file-upload-content_2_8').hide();
	$('.image-upload-wrap_2_8').show();
}
$('.image-upload-wrap_2_8').bind('dragover_2_8', function() {
	$('.image-upload-wrap_2_8').addClass('image-dropping_2_8');
});
$('.image-upload-wrap_2_8').bind('dragleave_2_8', function() {
	$('.image-upload-wrap_2_8').removeClass('image-dropping_2_8');
});


function readURL_3_8(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_8').hide();

			$('.file-upload-image_3_8').attr('src', e.target.result);
			$('.file-upload-content_3_8').show();

			$('.image-title_3_8').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_8();
	}
}

function removeUpload_3_8() {
	$('.file-upload-input_3_8').replaceWith(
		$('.file-upload-input_3_8').clone());
	$('.file-upload-content_3_8').hide();
	$('.image-upload-wrap_3_8').show();
}
$('.image-upload-wrap_3_8').bind('dragover_3_8', function() {
	$('.image-upload-wrap_3_8').addClass('image-dropping_3_8');
});
$('.image-upload-wrap_3_8').bind('dragleave_3_8', function() {
	$('.image-upload-wrap_3_8').removeClass('image-dropping_3_8');
});


function readURL_1_9(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_9').hide();

			$('.file-upload-image_1_9').attr('src', e.target.result);
			$('.file-upload-content_1_9').show();

			$('.image-title_1_9').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_9();
	}
}

function removeUpload_1_9() {
	$('.file-upload-input_1_9').replaceWith(
		$('.file-upload-input_1_9').clone());
	$('.file-upload-content_1_9').hide();
	$('.image-upload-wrap_1_9').show();
}
$('.image-upload-wrap_1_9').bind('dragover_1_9', function() {
	$('.image-upload-wrap_1_9').addClass('image-dropping_1_9');
});
$('.image-upload-wrap_1_9').bind('dragleave_1_9', function() {
	$('.image-upload-wrap_1_9').removeClass('image-dropping_1_9');
});



function readURL_2_9(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_9').hide();

			$('.file-upload-image_2_9').attr('src', e.target.result);
			$('.file-upload-content_2_9').show();

			$('.image-title_2_9').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_9();
	}
}

function removeUpload_2_9() {
	$('.file-upload-input_2_9').replaceWith(
		$('.file-upload-input_2_9').clone());
	$('.file-upload-content_2_9').hide();
	$('.image-upload-wrap_2_9').show();
}
$('.image-upload-wrap_2_9').bind('dragover_2_9', function() {
	$('.image-upload-wrap_2_9').addClass('image-dropping_2_9');
});
$('.image-upload-wrap_2_9').bind('dragleave_2_9', function() {
	$('.image-upload-wrap_2_9').removeClass('image-dropping_2_9');
});



function readURL_3_9(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_9').hide();

			$('.file-upload-image_3_9').attr('src', e.target.result);
			$('.file-upload-content_3_9').show();

			$('.image-title_3_9').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_9();
	}
}

function removeUpload_3_9() {
	$('.file-upload-input_3_9').replaceWith(
		$('.file-upload-input_3_9').clone());
	$('.file-upload-content_3_9').hide();
	$('.image-upload-wrap_3_9').show();
}
$('.image-upload-wrap_3_9').bind('dragover_3_9', function() {
	$('.image-upload-wrap_3_9').addClass('image-dropping_3_9');
});
$('.image-upload-wrap_3_9').bind('dragleave_3_9', function() {
	$('.image-upload-wrap_3_9').removeClass('image-dropping_3_9');
});



function readURL_1_10(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_10').hide();

			$('.file-upload-image_1_10').attr('src', e.target.result);
			$('.file-upload-content_1_10').show();

			$('.image-title_1_10').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_10();
	}
}

function removeUpload_1_10() {
	$('.file-upload-input_1_10').replaceWith(
		$('.file-upload-input_1_10').clone());
	$('.file-upload-content_1_10').hide();
	$('.image-upload-wrap_1_10').show();
}
$('.image-upload-wrap_1_10').bind('dragover_1_10', function() {
	$('.image-upload-wrap_1_10').addClass('image-dropping_1_10');
});
$('.image-upload-wrap_1_10').bind('dragleave_1_10', function() {
	$('.image-upload-wrap_1_10').removeClass('image-dropping_1_10');
});


function readURL_2_10(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_10').hide();

			$('.file-upload-image_2_10').attr('src', e.target.result);
			$('.file-upload-content_2_10').show();

			$('.image-title_2_10').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_10();
	}
}

function removeUpload_2_10() {
	$('.file-upload-input_2_10').replaceWith(
		$('.file-upload-input_2_10').clone());
	$('.file-upload-content_2_10').hide();
	$('.image-upload-wrap_2_10').show();
}
$('.image-upload-wrap_2_10').bind('dragover_2_10', function() {
	$('.image-upload-wrap_2_10').addClass('image-dropping_2_10');
});
$('.image-upload-wrap_2_10').bind('dragleave_2_10', function() {
	$('.image-upload-wrap_2_10').removeClass('image-dropping_2_10');
});



function readURL_3_10(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_10').hide();

			$('.file-upload-image_3_10').attr('src', e.target.result);
			$('.file-upload-content_3_10').show();

			$('.image-title_3_10').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_10();
	}
}

function removeUpload_3_10() {
	$('.file-upload-input_3_10').replaceWith(
		$('.file-upload-input_3_10').clone());
	$('.file-upload-content_3_10').hide();
	$('.image-upload-wrap_3_10').show();
}
$('.image-upload-wrap_3_10').bind('dragover_3_10', function() {
	$('.image-upload-wrap_3_10').addClass('image-dropping_3_10');
});
$('.image-upload-wrap_3_10').bind('dragleave_3_10', function() {
	$('.image-upload-wrap_3_10').removeClass('image-dropping_3_10');
});



function readURL_1_11(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_11').hide();

			$('.file-upload-image_1_11').attr('src', e.target.result);
			$('.file-upload-content_1_11').show();

			$('.image-title_1_11').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_11();
	}
}

function removeUpload_1_11() {
	$('.file-upload-input_1_11').replaceWith(
		$('.file-upload-input_1_11').clone());
	$('.file-upload-content_1_11').hide();
	$('.image-upload-wrap_1_11').show();
}
$('.image-upload-wrap_1_11').bind('dragover_1_11', function() {
	$('.image-upload-wrap_1_11').addClass('image-dropping_1_11');
});
$('.image-upload-wrap_1_11').bind('dragleave_1_11', function() {
	$('.image-upload-wrap_1_11').removeClass('image-dropping_1_11');
});



function readURL_2_11(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_11').hide();

			$('.file-upload-image_2_11').attr('src', e.target.result);
			$('.file-upload-content_2_11').show();

			$('.image-title_2_11').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_11();
	}
}

function removeUpload_2_11() {
	$('.file-upload-input_2_11').replaceWith(
		$('.file-upload-input_2_11').clone());
	$('.file-upload-content_2_11').hide();
	$('.image-upload-wrap_2_11').show();
}
$('.image-upload-wrap_2_11').bind('dragover_2_11', function() {
	$('.image-upload-wrap_2_11').addClass('image-dropping_2_11');
});
$('.image-upload-wrap_2_11').bind('dragleave_2_11', function() {
	$('.image-upload-wrap_2_11').removeClass('image-dropping_2_11');
});




function readURL_3_11(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_11').hide();

			$('.file-upload-image_3_11').attr('src', e.target.result);
			$('.file-upload-content_3_11').show();

			$('.image-title_3_11').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_11();
	}
}

function removeUpload_3_11() {
	$('.file-upload-input_3_11').replaceWith(
		$('.file-upload-input_3_11').clone());
	$('.file-upload-content_3_11').hide();
	$('.image-upload-wrap_3_11').show();
}
$('.image-upload-wrap_3_11').bind('dragover_3_11', function() {
	$('.image-upload-wrap_3_11').addClass('image-dropping_3_11');
});
$('.image-upload-wrap_3_11').bind('dragleave_3_11', function() {
	$('.image-upload-wrap_3_11').removeClass('image-dropping_3_11');
});



function readURL_1_12(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_12').hide();

			$('.file-upload-image_1_12').attr('src', e.target.result);
			$('.file-upload-content_1_12').show();

			$('.image-title_1_12').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_12();
	}
}

function removeUpload_1_12() {
	$('.file-upload-input_1_12').replaceWith(
		$('.file-upload-input_1_12').clone());
	$('.file-upload-content_1_12').hide();
	$('.image-upload-wrap_1_12').show();
}
$('.image-upload-wrap_1_12').bind('dragover_1_12', function() {
	$('.image-upload-wrap_1_12').addClass('image-dropping_1_12');
});
$('.image-upload-wrap_1_12').bind('dragleave_1_12', function() {
	$('.image-upload-wrap_1_12').removeClass('image-dropping_1_12');
});



function readURL_2_12(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_12').hide();

			$('.file-upload-image_2_12').attr('src', e.target.result);
			$('.file-upload-content_2_12').show();

			$('.image-title_2_12').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_12();
	}
}

function removeUpload_2_12() {
	$('.file-upload-input_2_12').replaceWith(
		$('.file-upload-input_2_12').clone());
	$('.file-upload-content_2_12').hide();
	$('.image-upload-wrap_2_12').show();
}
$('.image-upload-wrap_2_12').bind('dragover_2_12', function() {
	$('.image-upload-wrap_2_12').addClass('image-dropping_2_12');
});
$('.image-upload-wrap_2_12').bind('dragleave_2_12', function() {
	$('.image-upload-wrap_2_12').removeClass('image-dropping_2_12');
});



function readURL_3_12(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_12').hide();

			$('.file-upload-image_3_12').attr('src', e.target.result);
			$('.file-upload-content_3_12').show();

			$('.image-title_3_12').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_12();
	}
}

function removeUpload_3_12() {
	$('.file-upload-input_3_12').replaceWith(
		$('.file-upload-input_3_12').clone());
	$('.file-upload-content_3_12').hide();
	$('.image-upload-wrap_3_12').show();
}
$('.image-upload-wrap_3_12').bind('dragover_3_12', function() {
	$('.image-upload-wrap_3_12').addClass('image-dropping_3_12');
});
$('.image-upload-wrap_3_12').bind('dragleave_3_12', function() {
	$('.image-upload-wrap_3_12').removeClass('image-dropping_3_12');
});



function readURL_1_13(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_13').hide();

			$('.file-upload-image_1_13').attr('src', e.target.result);
			$('.file-upload-content_1_13').show();

			$('.image-title_1_13').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_13();
	}
}

function removeUpload_1_13() {
	$('.file-upload-input_1_13').replaceWith(
		$('.file-upload-input_1_13').clone());
	$('.file-upload-content_1_13').hide();
	$('.image-upload-wrap_1_13').show();
}
$('.image-upload-wrap_1_13').bind('dragover_1_13', function() {
	$('.image-upload-wrap_1_13').addClass('image-dropping_1_13');
});
$('.image-upload-wrap_1_13').bind('dragleave_1_13', function() {
	$('.image-upload-wrap_1_13').removeClass('image-dropping_1_13');
});



function readURL_2_13(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_13').hide();

			$('.file-upload-image_2_13').attr('src', e.target.result);
			$('.file-upload-content_2_13').show();

			$('.image-title_2_13').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_13();
	}
}

function removeUpload_2_13() {
	$('.file-upload-input_2_13').replaceWith(
		$('.file-upload-input_2_13').clone());
	$('.file-upload-content_2_13').hide();
	$('.image-upload-wrap_2_13').show();
}
$('.image-upload-wrap_2_13').bind('dragover_2_13', function() {
	$('.image-upload-wrap_2_13').addClass('image-dropping_2_13');
});
$('.image-upload-wrap_2_13').bind('dragleave_2_13', function() {
	$('.image-upload-wrap_2_13').removeClass('image-dropping_2_13');
});


function readURL_3_13(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_13').hide();

			$('.file-upload-image_3_13').attr('src', e.target.result);
			$('.file-upload-content_3_13').show();

			$('.image-title_3_13').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_13();
	}
}

function removeUpload_3_13() {
	$('.file-upload-input_3_13').replaceWith(
		$('.file-upload-input_3_13').clone());
	$('.file-upload-content_3_13').hide();
	$('.image-upload-wrap_3_13').show();
}
$('.image-upload-wrap_3_13').bind('dragover_3_13', function() {
	$('.image-upload-wrap_3_13').addClass('image-dropping_3_13');
});
$('.image-upload-wrap_3_13').bind('dragleave_3_13', function() {
	$('.image-upload-wrap_3_13').removeClass('image-dropping_3_13');
});



function readURL_1_14(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_14').hide();

			$('.file-upload-image_1_14').attr('src', e.target.result);
			$('.file-upload-content_1_14').show();

			$('.image-title_1_14').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_14();
	}
}

function removeUpload_1_14() {
	$('.file-upload-input_1_14').replaceWith(
		$('.file-upload-input_1_14').clone());
	$('.file-upload-content_1_14').hide();
	$('.image-upload-wrap_1_14').show();
}
$('.image-upload-wrap_1_14').bind('dragover_1_14', function() {
	$('.image-upload-wrap_1_14').addClass('image-dropping_1_14');
});
$('.image-upload-wrap_1_14').bind('dragleave_1_14', function() {
	$('.image-upload-wrap_1_14').removeClass('image-dropping_1_14');
});



function readURL_2_14(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_14').hide();

			$('.file-upload-image_2_14').attr('src', e.target.result);
			$('.file-upload-content_2_14').show();

			$('.image-title_2_14').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_14();
	}
}

function removeUpload_2_14() {
	$('.file-upload-input_2_14').replaceWith(
		$('.file-upload-input_2_14').clone());
	$('.file-upload-content_2_14').hide();
	$('.image-upload-wrap_2_14').show();
}
$('.image-upload-wrap_2_14').bind('dragover_2_14', function() {
	$('.image-upload-wrap_2_14').addClass('image-dropping_2_14');
});
$('.image-upload-wrap_2_14').bind('dragleave_2_14', function() {
	$('.image-upload-wrap_2_14').removeClass('image-dropping_2_14');
});



function readURL_3_14(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_14').hide();

			$('.file-upload-image_3_14').attr('src', e.target.result);
			$('.file-upload-content_3_14').show();

			$('.image-title_3_14').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_14();
	}
}

function removeUpload_3_14() {
	$('.file-upload-input_3_14').replaceWith(
		$('.file-upload-input_3_14').clone());
	$('.file-upload-content_3_14').hide();
	$('.image-upload-wrap_3_14').show();
}
$('.image-upload-wrap_3_14').bind('dragover_3_14', function() {
	$('.image-upload-wrap_3_14').addClass('image-dropping_3_14');
});
$('.image-upload-wrap_3_14').bind('dragleave_3_14', function() {
	$('.image-upload-wrap_3_14').removeClass('image-dropping_3_14');
});



function readURL_1_15(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_15').hide();

			$('.file-upload-image_1_15').attr('src', e.target.result);
			$('.file-upload-content_1_15').show();

			$('.image-title_1_15').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_15();
	}
}

function removeUpload_1_15() {
	$('.file-upload-input_1_15').replaceWith(
		$('.file-upload-input_1_15').clone());
	$('.file-upload-content_1_15').hide();
	$('.image-upload-wrap_1_15').show();
}
$('.image-upload-wrap_1_15').bind('dragover_1_15', function() {
	$('.image-upload-wrap_1_15').addClass('image-dropping_1_15');
});
$('.image-upload-wrap_1_15').bind('dragleave_1_15', function() {
	$('.image-upload-wrap_1_15').removeClass('image-dropping_1_15');
});



function readURL_2_15(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_15').hide();

			$('.file-upload-image_2_15').attr('src', e.target.result);
			$('.file-upload-content_2_15').show();

			$('.image-title_2_15').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_15();
	}
}

function removeUpload_2_15() {
	$('.file-upload-input_2_15').replaceWith(
		$('.file-upload-input_2_15').clone());
	$('.file-upload-content_2_15').hide();
	$('.image-upload-wrap_2_15').show();
}
$('.image-upload-wrap_2_15').bind('dragover_2_15', function() {
	$('.image-upload-wrap_2_15').addClass('image-dropping_2_15');
});
$('.image-upload-wrap_2_15').bind('dragleave_2_15', function() {
	$('.image-upload-wrap_2_15').removeClass('image-dropping_2_15');
});



function readURL_3_15(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_15').hide();

			$('.file-upload-image_3_15').attr('src', e.target.result);
			$('.file-upload-content_3_15').show();

			$('.image-title_3_15').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_15();
	}
}

function removeUpload_3_15() {
	$('.file-upload-input_3_15').replaceWith(
		$('.file-upload-input_3_15').clone());
	$('.file-upload-content_3_15').hide();
	$('.image-upload-wrap_3_15').show();
}
$('.image-upload-wrap_3_15').bind('dragover_3_15', function() {
	$('.image-upload-wrap_3_15').addClass('image-dropping_3_15');
});
$('.image-upload-wrap_3_15').bind('dragleave_3_15', function() {
	$('.image-upload-wrap_3_15').removeClass('image-dropping_3_15');
});



function readURL_1_0(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_1_0').hide();

			$('.file-upload-image_1_0').attr('src', e.target.result);
			$('.file-upload-content_1_0').show();

			$('.image-title_1_0').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_1_0();
	}
}

function removeUpload_1_0() {
	$('.file-upload-input_1_0').replaceWith(
		$('.file-upload-input_1_0').clone());
	$('.file-upload-content_1_0').hide();
	$('.image-upload-wrap_1_0').show();
}
$('.image-upload-wrap_1_0').bind('dragover_1_0', function() {
	$('.image-upload-wrap_1_0').addClass('image-dropping_1_0');
});
$('.image-upload-wrap_1_0').bind('dragleave_1_0', function() {
	$('.image-upload-wrap_1_0').removeClass('image-dropping_1_0');
});



function readURL_2_0(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_2_0').hide();

			$('.file-upload-image_2_0').attr('src', e.target.result);
			$('.file-upload-content_2_0').show();

			$('.image-title_2_0').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_2_0();
	}
}

function removeUpload_2_0() {
	$('.file-upload-input_2_0').replaceWith(
		$('.file-upload-input_2_0').clone());
	$('.file-upload-content_2_0').hide();
	$('.image-upload-wrap_2_0').show();
}
$('.image-upload-wrap_2_0').bind('dragover_2_0', function() {
	$('.image-upload-wrap_2_0').addClass('image-dropping_2_0');
});
$('.image-upload-wrap_2_0').bind('dragleave_2_0', function() {
	$('.image-upload-wrap_2_0').removeClass('image-dropping_2_0');
});


function readURL_3_0(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap_3_0').hide();

			$('.file-upload-image_3_0').attr('src', e.target.result);
			$('.file-upload-content_3_0').show();

			$('.image-title_3_0').html(input.files[0].name);
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload_3_0();
	}
}

function removeUpload_3_0() {
	$('.file-upload-input_3_0').replaceWith(
		$('.file-upload-input_3_0').clone());
	$('.file-upload-content_3_0').hide();
	$('.image-upload-wrap_3_0').show();
}
$('.image-upload-wrap_3_0').bind('dragover_3_0', function() {
	$('.image-upload-wrap_3_0').addClass('image-dropping_3_0');
});
$('.image-upload-wrap_3_0').bind('dragleave_3_0', function() {
	$('.image-upload-wrap_3_0').removeClass('image-dropping_3_0');
});