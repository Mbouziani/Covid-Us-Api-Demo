class Covidmodel {
  int? date;
  int? positive;
  int? negative;
  int? death;
  int? totalTestResults;
  Covidmodel(this.date, this.positive, this.negative, this.death,
      this.totalTestResults);

  Covidmodel.fromJson(Map<String, dynamic> json) {
    this.date = json["date"];
    this.positive = json["positive"];
    this.negative = json["negative"];
    this.death = json["death"];
    this.totalTestResults = json["totalTestResults"];
  }

/* 
    "date": 20210307,
    "positive": 28756489,            
    "negative": 74582825, 
    "death": 515151,   
    "totalTestResults": 363825123,    
*/
}
