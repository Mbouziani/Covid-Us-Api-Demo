String getnumber(int value) {
  String finalresult = '';

  if (value < 1000) {
    finalresult = value.toString();
  } else if (value > 1000 && value < 1000000) {
    finalresult = (value / 1000).toStringAsFixed(1) + 'K';
  } else if (value > 1000000) {
    finalresult = (value / 1000000).toStringAsFixed(1) + 'M';
  }

  return finalresult;
}
