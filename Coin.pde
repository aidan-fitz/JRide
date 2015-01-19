class Coin {

  private float total; 
  private ArrayList<float> Storage, index;

 

  Coin(XCor, YCor) {
  draw(XCor, YCor);
  }


float GetTotal(){
      return this.total;

}

void ModifyStorage(XCor){
     this.Storage.add(XCor);
}



float SetTotal(float delta){
      this.total += delta;

}


 

  void draw(XCor, YCor) {
    noStroke();
    color c = color(255, 204, 0);
    fill(c);
    ellipse(XCor,YCor + 5, 5, 5);
  }
}
