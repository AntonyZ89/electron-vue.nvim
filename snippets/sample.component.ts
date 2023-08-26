import { Component } from '@angular/core';
import { ApiMarvelService } from './api-marvel.service';

@Component({
  selector: 'app-root',
  template: './app.component.html',
})
export class AppComponent {
  result = []

  constructor(public apiMarvelService: ApiMarvelService) {}
  
  getHeroes(query: string): void {
    this.apiMarvelService.
      getHeroes(query).
      subscribe(
        ({data: {results}}) => (this.result = results)
      )
  }
}

