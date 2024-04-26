class Subject {
  String title;
  String image;
  bool isSelected = false;

  Subject(this.title, this.image, {isSelected});

  changeSelection() {
    isSelected = !isSelected;
  }
}
