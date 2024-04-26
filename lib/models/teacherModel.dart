class Teacher {
  String name;
  String image;
  String subject;
  String price;
  int? selectionNumber;
  bool isSelected = false;

  Teacher(this.name, this.image, this.subject, this.price,
      {this.selectionNumber, this.isSelected = false});

  changeSelectionNumber(int num) {
    selectionNumber = num;
  }

  changeSelection() {
    isSelected = !isSelected;
    if (isSelected == false) {
      selectionNumber = null;
    }
  }
}
