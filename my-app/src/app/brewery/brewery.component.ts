import { Component, OnInit } from '@angular/core';
import { Brewery } from '../brewery';

@Component({
  selector: 'app-brewery',
  templateUrl: './brewery.component.html',
  styleUrls: ['./brewery.component.css']
})
export class BreweryComponent implements OnInit {

  brewery: Brewery = {
    id: 1,
    name: "Sibling",
    address: "5225 Street street, Cleveland OH 11111",
    neighborhood: "Westlake",
    website: "www.siblingrivalry.com"
  }

  constructor() { }

  ngOnInit() {
  }

}
