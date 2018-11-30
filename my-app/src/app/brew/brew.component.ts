import { Component, OnInit } from '@angular/core';
import { Brew } from '../brew';

@Component({
  selector: 'app-brew',
  templateUrl: './brew.component.html',
  styleUrls: ['./brew.component.css']
})
export class BrewComponent implements OnInit {

  brew: Brew = {
    id: 1,
    name: "Cold Beer",
    breweryID: 4,
    type: "IPA",
    isAvalible: true,
  };

  constructor() { }

  ngOnInit() {
  }

}
