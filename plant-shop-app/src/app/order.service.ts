import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class OrderService {
  private baseUrl = 'http://localhost:8080/api/orders';

  constructor(private http: HttpClient) { }

  getOrders(): Observable<any> {
    return this.http.get(`${this.baseUrl}`);
  }
}

