import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrewComponent } from './brew/brew.component';
import { BrewReviewComponent } from './brew-review/brew-review.component';
import { BrewlistComponent } from './brewlist/brewlist.component';
import { UserComponent } from './user/user.component';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { BreweryComponent } from './brewery/brewery.component';


@NgModule({
  declarations: [
    AppComponent,
    BrewComponent,
    BrewReviewComponent,
    BrewlistComponent,
    UserComponent,
    LoginComponent,
    SignupComponent,
    BreweryComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
