document.addEventListener('DOMContentLoaded', function(){

  if ( document.getElementById('prototype_image')){     //preview.jsの適用ページを対象Idが存在するページに限定する

    const ImageSection = document.getElementById('image_section');     //車両画像を表示する場所のHTML要素を取得

    document.getElementById('prototype_image').addEventListener('change', function(e){     //画像情報が変更されたらイベント発火するように定義

      //画像が表示されている場合のみ、既に存在している画像を削除する
      const imageContent = document.getElementById("image_content");
      if (imageContent){
        imageContent.remove();
      }

      const file = e.target.files[0];                    //画像情報を取得して変数fileに格納
      const blob = window.URL.createObjectURL(file);     //取得した画像情報のURLを生成

      const imageElement = document.createElement('div');     // 画像を表示するためのdiv要素を生成
      const blobImage = document.createElement('img');        // 表示する画像を生成
      blobImage.setAttribute('src', blob);                    //img要素にsrc属性として画像情報(blob)を指定
      blobImage.setAttribute('id', 'image_content')           //img要素にidを指定(画像を２回以上変更しても以前の画像が削除されるようにするため)

      imageElement.appendChild(blobImage);        //imd要素をdiv要素の子要素として追加
      ImageSection.appendChild(imageElement);     //div要素をさらにdiv要素の子要素として追加
    });
  }
});
