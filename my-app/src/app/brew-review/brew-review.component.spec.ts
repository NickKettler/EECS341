import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BrewReviewComponent } from './brew-review.component';

describe('BrewReviewComponent', () => {
  let component: BrewReviewComponent;
  let fixture: ComponentFixture<BrewReviewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BrewReviewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BrewReviewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
