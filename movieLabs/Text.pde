public class Text {
  int x, y, w, h;
  int textLength=0;
  String Text="";
  void Text() {
  }
  void placeIt(int xPos, int yPos, int wid, int heig) {
    x=xPos;
    y=yPos;
    w=wid;
    h=heig;
    noStroke();
    fill(150, 50);
    rect(x, y, w, h);
  }
  void displayText() {
    fill(0);
    text(Text, 400, 313);
  }
  void KeyPressed(char KEY, int KEYCODE) {
    if (KEY == BACKSPACE) {
      Text=Text.substring(0, textLength-2); 
      //if (key == BACKSPACE)
      //text1= text1.substring(0, max(0, text1.length()-1));
    }
    addText(KEY);
  }
  void addText(char newText) {
    Text+=newText;
    textLength++;
  }
  String getText() {
    return Text;
  }

  String findInMovie() {
    int number=0;

    return ""+number;
  }
}
