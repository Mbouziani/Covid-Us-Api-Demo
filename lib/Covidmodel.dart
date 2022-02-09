class Covidmodel {
  int? date;
  int? positive;
  int? negative;
  int? death;
  int? totalTestResults;
  Covidmodel(this.date, this.positive, this.negative, this.death,
      this.totalTestResults);

  Covidmodel.fromJson(Map<String, dynamic> json) {
    date = json["date"];
    positive = json["positive"];
    negative = json["negative"];
    death = json["death"];
    totalTestResults = json["totalTestResults"];
  }
}
