import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import { PaymentDetail } from "./payment-detail.model";
@Injectable({
  providedIn: 'root'
})
export class PaymentDetailService {

  formData!: PaymentDetail;
  list !: PaymentDetail[];
  readonly rootURL ='http://localhost:59035/api';
  
  constructor(private http: HttpClient) { }

  postPaymentDetail() {
    return this.http.post(this.rootURL + '/PaymentDetail', this.formData);
  }

  putPaymentDetail() {
    return this.http.put(this.rootURL + '/PaymentDetail/'+ this.formData.pmId, this.formData);
  }

  deletePaymentDetail(id:number) {
    return this.http.delete(this.rootURL + '/PaymentDetail/'+ id);
  }

  refreshList(){
    this.http.get(this.rootURL + '/PaymentDetail')
    .toPromise()
    .then(res => {
     this.list = res as PaymentDetail[]});
    
  }
  
}
