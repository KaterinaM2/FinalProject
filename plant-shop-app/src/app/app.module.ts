import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';  
import { HttpClientModule } from '@angular/common/http';
import { RouterModule, Routes } from '@angular/router';  

import { AppComponent } from './app.component';
import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { ProductListComponent } from './product-list/product-list.component';
import { OrderListComponent } from './order-list/order-list.component';

const appRoutes: Routes = [
  { path: 'register', component: RegisterComponent },
  { path: 'login', component: LoginComponent },
  { path: 'products', component: ProductListComponent },
  { path: 'orders', component: OrderListComponent },
  { path: '', redirectTo: '/products', pathMatch: 'full' }
];

@NgModule({
  declarations: [
    AppComponent,
    RegisterComponent,
    LoginComponent,
    ProductListComponent,
    OrderListComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,  // Add FormsModule to imports array
    HttpClientModule,
    RouterModule.forRoot(appRoutes)  // Add RouterModule with routes
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }





