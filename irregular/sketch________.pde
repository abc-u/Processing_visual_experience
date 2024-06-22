int a;
float angle = 0.0;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  noFill();
  //bezier(0,0,int(random(500)),int(random(500)),int(random(500)),int(random(500)),width,height);
  bezier(0, 0, width/2, height/3, width/2, height/3*2, width, height);//曲線を描く二点で制御

  beginShape();
  curveVertex(50, 50); // 黒色//一点目は表示されない
  curveVertex(100, 100); // 水色
  curveVertex(150, 50); // 赤色
  curveVertex(200, 100); // 緑色
  curveVertex(250, 50); // 青色
  curveVertex(300, 100); // オレンジ色
  curveVertex(300, 100); // オレンジ色
  endShape();

  pushMatrix();
  translate(width/2, height/2);//原点座標の位置を変える
  ellipse(0, 0, 100, 100);
  popMatrix();


  translate(width/2, height/2); //座標の原点をキャンパスの中心に変更
  rotate(angle); //angleの中身分だけ図形を回転
  rectMode(CENTER); //矩形の描画を中心点からに変更
  rect(0, 0, 100, 100);
  angle = angle + radians(3); //angleの中身を3度加算
  //角度はradianかPI

  scale(mouseX/60.0); //倍率をマウスのX座標から算出している
  rectMode(CENTER);
  rect(30, 30, 30, 30);//キャンパス自体の大きさが変わる
  ellipse(30, 30, 30, 30);
  triangle(15, 45, 45, 45, 30, 60);
}
