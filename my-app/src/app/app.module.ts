import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrewComponent } from './brew/brew.component';
import { BrewReviewComponent } from './brew-review/brew-review.component';
import { BrewlistComponent } from './brewlist/brewlist.component';


@NgModule({
  declarations: [
    AppComponent,
    BrewComponent,
    BrewReviewComponent,
    BrewlistComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
