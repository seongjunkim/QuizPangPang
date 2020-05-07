var idleTime = 0;
		
var buttonAudio = new Audio("/resources/audio/button.wav");
var phoneAudio = new Audio("/resources/audio/phone.wav");
var keypadAudio = new Audio("/resources/audio/keypad.mp3");

var code = `
    <fieldset class="keypad">
        <input class="key" type="button" value="1">
        <input class="key" type="button" value="2">
        <input class="key" type="button" value="3">
        <input class="key" type="button" value="4">
        <input class="key" type="button" value="5">
        <input class="key" type="button" value="6">
        <input class="key" type="button" value="7">
        <input class="key" type="button" value="8">
        <input class="key" type="button" value="9">
        <button class="key" type="button" id="delete"><i class="fas fa-arrow-left"></i></button>
        	<input class="key" type="button" value="0">
        <button class="key" type="button" id="close"><i class="fas fa-times"></i></button>
    </fieldset>
`;

$(document).ready(function() {
	
	$(".go").click(function() {
		$("#windowSet").hide();
		$('.keypad').hide(500);
		var phone = $(".textpad").val();
		buttonAudio.play();
		setTimeout(function() {
			if($(".textpad").val() == "") {
				$("#windowSet").show(500);
				$(".textpad").hide();
				$(".window_msg p").html("연락처를 입력해주세요!");
				return;
			} else if($(".textpad").val().length < 12 || $(".textpad").val().charAt(0) != "0") {
				$("#windowSet").show(500);
				$(".textpad").hide();
				$(".window_msg p").html("연락처를 다시 확인해주세요!");
				return;
			}
			$.ajax({
			    url : "/join",
			    type : "post",
			    data : { phone : phone },
			    success : function(result) {
			    	if(result == 1) {
			    		$("#windowSet").show(500);
						$(".textpad").hide();
						$(".window_msg p").html("<span style='font-size: 2.5vw;'>기회를 모두 사용해버렸어요</span><br>더이상 도전할 수 없어요!");
			    	} else if(result == 2) {
			    		setTimeout(function() {
			    			location.href = "/question";
			    		}, 500);
			    	}
			    }
			});
		}, 100);
	});
	
	$(".close").click(function() {
		buttonAudio.play();
		setTimeout(function() {
			$(".window_msg p").html("");
			$("#windowSet").hide();
			$(".textpad").show();
		}, 100);
	});
	
	$(".back").click(function() {
		buttonAudio.play();
		setTimeout(function() {
			location.href = "/";
		}, 200);
	});
	
    var idleInterval = setInterval(timerIncrement, 1000);

    $(this).mousemove(function(e) {
        idleTime = 0;
    });
    $(this).click(function(e) {
        idleTime = 0;
    });
    
    $('.textpad').click(function() {
    	if($(".keypad").is(":visible") == false) {
    		keypadAudio.play();
            $(".keypad").remove();
            $('#numericInput').append(code);
            $('.keypad').show(500);
            $('.keypad input.key').click(function(e) {
            	phoneAudio.play();
                if($('.textpad').val().length < 13) {
                    $('.textpad').val($('.textpad').val() + $(this).val()); 
                    $('.textpad').val(inputPhoneNumber($('.textpad').val()));
                }
            });
            $('#delete').click(function() {
            	phoneAudio.play();
                $('.textpad').val(inputPhoneNumber($('.textpad').val().slice(0,-1)));
            });
            $('#close').click(function() {
            	phoneAudio.play();
                $('.keypad').hide(500);
            });
    	} else {
    		$('.keypad').hide(500);
    	}
    });

    $(".textpad").on("keyup", function() {
        $('.textpad').val($('.textpad').val().replace(/[^0-9]/g,""));
        $('.textpad').val(inputPhoneNumber($('.textpad').val()));
    });
});

function timerIncrement() {
    idleTime = idleTime + 1;
    if (idleTime > 30) {
        location.href = "/";
    }
}

function inputPhoneNumber(phoneNumber) {
    strOriginal = phoneNumber.replace(/[^0-9]/g, '');

    var strResult = '';

    if (strOriginal.length < 4) {
        return strOriginal;
    } else if (strOriginal.length < 7) {
        strResult += strOriginal.substr(0, 3);
        strResult += '-';
        strResult += strOriginal.substr(3);
        return strResult;
    } else if (strOriginal.length < 11) {
        strResult += strOriginal.substr(0, 3);
        strResult += '-';
        strResult += strOriginal.substr(3, 3);
        strResult += '-';
        strResult += strOriginal.substr(6);
        return strResult;
    } else {
        strResult += strOriginal.substr(0, 3);
        strResult += '-';
        strResult += strOriginal.substr(3, 4);
        strResult += '-';
        strResult += strOriginal.substr(7);
        return strResult;
    }
    
    return strResult;
}