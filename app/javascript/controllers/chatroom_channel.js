import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const messages = document.querySelector("[data-chatroom-subscription-target='messages']")
    messages.insertAdjacentHTML("beforeend", data.message)
  }
})
