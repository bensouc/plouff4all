import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["start", "end", "price", "total"]

  connect() {
    console.log('test')
    console.log(this.startTarget)
  }

  computPrice() {
    console.log('rest')
    let start = this.startTarget.value;
    let end = this.endTarget.value;
    const pricePerDay = this.priceTarget.dataset.price
    let s = start.split("-")
    let e = end.split("-")
    let ps = s[2]
    let pe = e[2]
    let totalPrice = Number.parseInt(pricePerDay, 10) * (pe - ps)
    if (totalPrice > 0){
      this.totalTarget.innerHTML = totalPrice
    } else {
      this.totalTarget.innerHTML = 0
    }
    // console.log(total)

    // this.totalTarget.innerHTML = total

  }
}
