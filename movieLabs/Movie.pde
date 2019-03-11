class Movie implements Comparable<Movie>{
  String review;
  int rating;
  
  
  public Movie(String r, int ra){
    review=r;
    rating=ra;
  }
  public String getReview(){
    return review;
  }
  public int getRating(){
    return rating;
  }
  public int compareTo(Movie other){
    if(this.rating>other.rating){
      return 1;
    }
    else if(this.rating<other.rating){
      return -1;
    }
    else return 0;
  }
  public String toString(){
    return "review: "+review+" rating: "+rating;
  }
}
