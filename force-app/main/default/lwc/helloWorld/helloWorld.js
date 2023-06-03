import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {greeting = 'Pedro';
changeHandler(event) {
  this.greeting = event.target.value;
}
}