$(function(){
  $('#MyFile').change(function(e){
    //ファイルオブジェクトを取得する
    var file = e.target.files[0];
    var reader = new FileReader();
    console.log(file);
    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }
 
    //アップロードした画像を設定する
    reader.onload = (function(file){
      return function(e){
        $("#UploadFile").attr("src", e.target.result);
      };
    })(file);
    reader.readAsDataURL(file);
 
  });
});