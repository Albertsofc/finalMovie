import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;
ArrayList<Movie> theSearchedArray;
ArrayList<Movie> movieList;

public class MovieList {
  int count;
  Iterator<Movie> it;//import iterator

  public MovieList() {
    movieList= new ArrayList<Movie>();
    count=movieList.size();
  }
  public void loadMovies(String m) {
    Scanner scan=new Scanner(m);
    int num=scan.nextInt();
    String s=scan.nextLine();
    movieList.add(new Movie(s, num));
  }
  public int getCount() {
    return count;
  }
  public float getAverageScore() {
    int t=0;
    int count=0;
    float av;
    for (Movie m : movieList) {
      t+=m.getRating();
      count++;
    }
    av=(t/count);
    return av;
  }

  public String overallComment() {
    float sc=this.getAverageScore();
    if (sc>3.5) {
      return "this movie is superb";
    } else if (sc>3) {
      return "this movie is pretty good";
    } else if (sc>2) {
      return "borderline.";
    } else if (sc>1) {
      return "sorry but this was kind of a waste of your time";
    } else return "oof did you watch the whole thing???";
  }


  public void sortMoviesByCount() {
    Collections.sort(movieList);
  }


  public ArrayList searchTheArray(String in) {
    theSearchedArray=new ArrayList<Movie>();
    for (Movie n : movieList) {
      if (n.getReview().contains(in)) {
        theSearchedArray.add(n);
      } else {
      }
    }
    return theSearchedArray;
  }
  //this isn't working
  //how to test????



  public String toString() {
    StringBuilder s=new StringBuilder();
    it=movieList.iterator();
    String fin;
    while (it.hasNext()) {
      s.append(""+it.next()+" ");
    }
    fin= String.valueOf(s);
    return fin;
  }
  String print() {
    return ""+movieList;
  }
}
