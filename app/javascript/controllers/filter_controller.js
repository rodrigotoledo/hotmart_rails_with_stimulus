import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ["input", "results"]

  connect() {
    this.update()
  }

  update() {
    const query = this.inputTarget.value
    get(`/posts?query=${query}`, {
      responseKind: "turbo-stream"
    })
  }
}
