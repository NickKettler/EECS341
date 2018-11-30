import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BrewlistComponent } from './brewlist/brewlist.component';
import { LoginComponent } from './login/login.component';


const routes: Routes = [
  { path: 'brewlist', component: BrewlistComponent },
  { path: 'login', component: LoginComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
