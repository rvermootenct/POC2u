import ApplicationController from './application_controller.js'

export default class extends ApplicationController {
  connect () {
    super.connect()
  }
  increment(event) {
    event.preventDefault()
    console.log('hi')
    this.stimulate('Counter#increment', 1)
  }
}