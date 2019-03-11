int count1, count2, count3, count4, count0;
ArrayList<Movie> searchedArray=new ArrayList<Movie>();
MovieList ex=new MovieList();


public class Data {
  public Data(MovieList m) {
    ex=m;
  }
  void search(String in) {
    count0=0;
    count1=0;
    count2=0;
    count3=0;
    count4=0;
    //searchedArray=new ArrayList<Movie>();
    
    searchedArray=ex.searchTheArray(in); 
    
    //ok there is a flaw with searchedArray 
    //things we know: ex has loaded all of the movies correctly, in is loaded correctly
    
    
    for (int i=0; i<searchedArray.size(); i++) {
      if (searchedArray.get(i).getRating()==4) { 
        count4++;
      } else if (searchedArray.get(i).getRating()==3) {
        count3++;
      } else if (searchedArray.get(i).getRating()==2) {
        count2++;
      } else if (searchedArray.get(i).getRating()==1) {
        count1++;
      } else {
        count0++;
      }
    }
    //initial conditions:
    //0- 1072
    //1- 2199 
    //2- 1654 
    //3- 2321 
    //4- 1281
  }
  void drawIt() {
    textSize(40);
    rect(413, 341, (count0/4), 50, 627); //count0
    text("0", 382, 381);
    rect(413, 411, (count1/4), 50, 627); //count1
    text("1", 382, 451);
    rect(413, 481, (count2/4), 50, 627); //count2
    text("2", 382, 521);
    rect(413, 551, (count3/4), 50, 627); //count3
    text("3", 382, 591);
    rect(413, 621, (count4/4), 50, 627); //count4
    text("4", 382, 661);
    //println("last refreshed: "+ex.searchTheArray(inp));
  }
}
