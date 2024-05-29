import { Component } from '@angular/core';
import { UserService } from '../user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  credentials: any = {};

  constructor(private userService: UserService) { }

  login() {
    this.userService.login(this.credentials).subscribe(
      response => {
        console.log('User logged in successfully', response);
      },
      error => {
        console.error('There was an error during the login process!', error);
      }
    );
  }
}

