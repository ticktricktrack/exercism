class Leap {
  constructor(year) {
    this.year = year;
  }

  isLeap() {
    if (this.year % 400  === 0 ) return true;
    if (this.year % 100  === 0 ) return false;
    return this.year % 4 === 0;
  }
}

export default Leap;
