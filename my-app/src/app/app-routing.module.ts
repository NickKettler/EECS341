import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BrewlistComponent } from './brewlist/brewlist.component';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { BrewComponent} from './brew/brew.component';
import { BreweryComponent} from './brewery/brewery.component';

const routes: Routes = [
  { path: 'brewlist', component: BrewlistComponent },
  { path: 'login', component: LoginComponent },
  { path: 'signup', component: SignupComponent},
  { path: 'brew', component: BrewComponent },
  { path: 'brewery', component: BreweryComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
