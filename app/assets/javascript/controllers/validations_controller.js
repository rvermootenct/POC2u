import Turbolinks from 'turbolinks'
import ApplicationController from './application_controller'

export default class extends ApplicationController {
  reset (event) {
    console.log('hi this thing is hit')
    event.preventDefault()
    Turbolinks.visit(location.href)
  }
}