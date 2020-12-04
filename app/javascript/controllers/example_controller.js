import { Controller } from 'stimulus'
import StimulusReflex from 'stimulus_reflex'

export default class extends Controller {
  connect() {
    StimulusReflex.register(this)
  }

  increment() {
    this.stimulate('WelcomeReflex#from_stimulus', this.element.dataset['step'])
  }
}