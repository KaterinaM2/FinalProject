import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';  // Import FormsModule
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';  // Import RouterModule

import { AppRoutesModule } from './app.routes';
import { AppComponent } from './app.component';
import { RegisterComponent } from './register/register.component';
import { LoginComponent } from './login/login.component';
import { ProductListComponent } from './product-list/product-list.component';
import { OrderListComponent } from './order-list/order-list.component';

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
    AppRoutesModule,
    FormsModule,  // Add FormsModule to imports array
    HttpClientModule,
    RouterModule  // Add RouterModule to imports array
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }



