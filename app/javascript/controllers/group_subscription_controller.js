import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="group-subscription"
export default class extends Controller {
  static targets = ["messages"]
  static values = { groupId: Number, currentUserId: Number }

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
    // Logic to know if the sender is the current_user
    const currentUserIsSender = this.currentUserIdValue === data.sender_id

    // Creating the whole message from the `data.message` String
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)

    // Inserting the `message` in the DOM
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  #buildMessageElement(currentUserIsSender, message) {
    return `
      <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }

  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }
}
