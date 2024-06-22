// 変数を初期化
int x=0;

void setup()
{
  // 400x400のウインドウを作るよ
  size(400, 400);
}

void draw()
{
  // x*x/200の計算結果をyに入れる
  int y = x*x/200;
  // 上下反転させるためheight=400から引いて点を描く
  // ウインドウの高さは height で取得することができる
  point(x, height-y);
  // 描画するたびにxの値を増やす
  x=x+1;
}
