import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.File;
import java.util.Collections;
import static java.lang.System.*;

PImage oscar=new PImage();
PImage closeEn=new PImage();
PImage openEn=new PImage();
int clicks;
Text t=new Text();
String typed;
MovieList m=new MovieList();
Scanner scan;

void setup() {
  oscar=loadImage("oscar.jpg");
  closeEn=loadImage("closed.png");
  openEn=loadImage("open.png");
  size(1500, 968);
  try {
    scan=new Scanner(new File("Desktop/movieLabs/movieReviews.txt"));
    int siz=scan.nextInt();
    scan.nextLine();
    while (scan.hasNext()) {
      m.loadMovies(scan.nextLine());
    }
    Data getData=new Data(m); 
    getData.search(t.getText());
  }
  catch(Exception e) {
    println(e);
  }
  //println(m);
}
void draw() {
  background(oscar);
  if (clicks==1&&clicks!=0) {
    scene1();
  } else if (clicks!=0) {
    scene2();
    controls();
    textSize(15);
    t.placeIt(392, 292, 300, 30);
    t.displayText();
    //println(t.getText());
    
 
  }
}

void mouseClicked(MouseEvent e) {
  clicks++;
}
void controls() {
}
void scene1() {
  image(closeEn, (width/2)-479, (height/2)-450);
}
void scene2() {
  Data data1=new Data(m); 
  image(openEn, (width/2)-449, (height/2)-413.5);
  textSize(50);
  fill(160, 36, 17);
  text("and the award goes to...", 433, 250);
  typed=t.getText();
  data1.search(typed);
  //getData.search(t.getText());           this one is the problem- put it up in a higher method?
  //                                        the problem is that it was refreshing every single millisecond when I only wanted it to refresh when I clicked a new button
  //                                        furthermore, when it refreshes I don't want it to add onto the count
  //println(getData.getCount());
  data1.drawIt();
  //println(m.print());
}
void keyPressed() {
  if (isLetter(keyCode)) {
    t.addText(key);
  } else if (keyCode==13) {
    //String found=t.findInMovie();
  }
}
boolean isLetter(int kCode) {
  if (kCode>31&&kCode<128) {
    return true;
  } else {
    return false;
  }
}
