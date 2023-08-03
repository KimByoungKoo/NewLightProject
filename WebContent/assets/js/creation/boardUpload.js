/**
 * 
 */

/*const fileInput = document.querySelector('#file');
const fileList = document.querySelector('.file-list');
const submitBtn = document.querySelector('.submit-btn');

// 파일 선택 시 파일 목록 추가
fileInput.addEventListener('change', (e) => {
  const files = e.target.files;

  for (let i = 0; i < files.length; i++) {
    const li = document.createElement('li');
    li.textContent = files[i].name;
    fileList.appendChild(li);
  }
});

// 폼 제출 시 파일 유효성 검사
submitBtn.addEventListener('click', (e) => {
  e.preventDefault();

  const files = fileInput.files;

  for (let i = 0; i < files.length; i++) {
    if (!validateFile(files[i].name)) {
      alert('올바른 파일 형식이 아닙니다.');
      return;
    }
  }

  // TODO: 서버로 폼 데이터 전송
});

// 파일 유효성 검사 함수
function validateFile(fileName) {
  const allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
  return allowedExtensions.exec(fileName);
}
*/

/*===============================================*/

let $fileInput = $('#file');
let $fileList = $('.file-list');
let $cnt = $('.cnt');

/*console.log($fileInput);*/

// 첨부파일 미리보기 처리
$fileInput.on('change', function(){
		/*console.log('change!!!');*/
		
		let files = this.files;
		/*console.log(files);*/
		
// 파일을 변경하면 원래 선택된 파일의 미리보기를 사라지게 처리하는 코드	
// html('')로 초기화를 시켜준다.	
		$fileList.html('');
		
		if(files.length > 10){
	//	파일이 진짜로 삭제되는지 확인하기
			/*console.log(files);*/
			
	// 파일을 드래그앤드랍으로 파일첨부를 할 수 있게 도와주는 객체이다.
			let dt = new DataTransfer();
			files = dt.files;
			
	// 파일이 초기화 됬는지 확인하기
			console.log(files);
			
			alert("파일은 최대 10개까지만 첨부 가능합니다.");
			$cnt.text(files.length);
			return;
		}
		
//		미리보기		
		for(let i = 0; i < files.length; i++){
			let src = URL.createObjectURL(files[i]);
			
			$fileList.append(
				`<li>
					<div class="show-img-box">
					
						<button type='button' class='img-cancel-btn' data-name='${files[i].name}'>삭제</button>
					
						<img src=${src}>
						
					</div>
					
				</li>`	
			);	
			
			$cnt.text(files.length);
			
		}
		
	// 첨부파일 삭제하기
	$('.img-cancel-btn').on('click', function(){
	// 삭제버튼 클릭이벤트 출력으로 확인
		console.log('삭제!!!');
		
		$(this).parent().parent().remove();
		
		let fileName = $(this).data('name');
		
		let dt = new DataTransfer();		
		
		for(let i = 0; i < files.length; i++){
			if(files[i].name !== fileName){
				dt.items.add(files[i]);	
			}
		}
		
		files = dt.files;
		
		console.log(files);
		$cnt.text(files.length);
	});

});

// 글쓰기 작성 취소 이벤트처리하기
$('.cancel-btn').on('click', () => {
	window.location.href = '/main/mainpageListOk.mi';
});


let $form = $('#write-form');
let $submit = $('.submit');

console.log('!!!!!!!');

$submit.on('click', function() {
	console.log("aaaaaa");
	console.log($('#category1').val()); 
	
	if($('#category1').val() == '0' || $('#category2').val() == '0'){ 
		alert('카테고리를 선택해 주세요');
		return;
	}
	
	$form.submit();
	
});


let $category1 = $('#category1');
let $category2 = $('#category2');

$category1.on('change' , function(){
	console.log($(this).val());
	let text ='';
	
	if($(this).val() == '101') {
		text += `
		<option value="0">----</option>
        <option value="손그림">손그림</option>
        <option value="배경화면">배경화면</option>
        <option value="카톡테마">카카오톡 테마</option>
        <option value="폰트">폰트</option>
        <option value="만화">만화</option>
		`;
	}
	else if($(this).val()== '201'){
		text += `
		<option value="0">----</option>
        <option value="배경화면">배경화면</option>
        <option value="트레이싱">트레이싱</option>
        <option value="카톡테마">카카오톡 테마</option>
		`;
	}
	
	$category2.html(text);
	
})











