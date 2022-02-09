String getdate(String value) {
  String dateFinal = '';

  for (int i = 0; i < value.length; i++) {
    if (i == 5 || i == 3) {
      dateFinal = dateFinal + value[i] + '-';
    } else {
      dateFinal = dateFinal + value[i];
    }
  }
  return dateFinal;
}
