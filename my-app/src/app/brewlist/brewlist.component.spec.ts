import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BrewlistComponent } from './brewlist.component';

describe('BrewlistComponent', () => {
  let component: BrewlistComponent;
  let fixture: ComponentFixture<BrewlistComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BrewlistComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BrewlistComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
