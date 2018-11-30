import { Component, OnInit } from '@angular/core';
import { BREWS } from '../DummyBrews';

@Component({
  selector: 'app-brewlist',
  templateUrl: './brewlist.component.html',
  styleUrls: ['./brewlist.component.css']
})
export class BrewlistComponent implements OnInit {

  brews = BREWS;

  constructor() { }

  ngOnInit() {
    
  }

}
