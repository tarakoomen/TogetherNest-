import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="group-subscription"
export default class extends Controller {
  static targets = ["messages"]
  static values = { groupId: Number }

connect() {
  console.log(`Subscribed to the group with the id ${this.groupIdValue}.`)

  this.channel = createConsumer().subscriptions.create(
    { channel: "GroupChannel", id: this.groupIdValue },
    { received: data => this.#insertMessageAndScrollDown(data) }
  )
  }

  disconnect() {
    console.log("Disconnected from the group")
    this.channel.unsubscribe()
  }

  resetForm(event) {
    console.log("hello")
    event.target.reset()
  }

  #insertMessageAndScrollDown(data) {
    console.log("hi")
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
