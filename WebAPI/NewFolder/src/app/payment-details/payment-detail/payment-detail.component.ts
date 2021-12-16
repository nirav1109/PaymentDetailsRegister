import { Component, OnInit } from '@angular/core';
import { PaymentDetailService } from 'src/app/shared/payment-detail.service';
import { NgForm } from '@angular/forms';
import { from } from 'rxjs';

@Component({
  selector: 'app-payment-detail',
  templateUrl: './payment-detail.component.html',
  styles: [
  ]
})
export class PaymentDetailComponent implements OnInit {

  constructor(public service : PaymentDetailService) { }

  ngOnInit(): void {
    this.resetForm();
  }

  resetForm(form?: NgForm) {
    if (form != null)
      form.form.reset();
    this.service.formData = {
      pmId: 0,
      cardOwnerName: '',
      cardNumber: '',
      expirationDate: '',
      cvv: ''
    }
  }

  onSubmit(form: NgForm) {
    if(this.service.formData.pmId==0)
    {
      this.inserRecord(form);
    }
    else
    {
      this.updateRecord(form);
    }
    
  }

  inserRecord(form:NgForm){
    this.service.postPaymentDetail().subscribe(
      res=>{
        this.resetForm(form);
        alert("Data Added Successfully...!");
        this.service.refreshList();
      },
      err=>{
        console.log(err);
      }
    )
  }

  updateRecord(form:NgForm){
    this.service.putPaymentDetail().subscribe(
      res=>{
        this.resetForm(form);
        alert("Data Updated Successfully...!");
        this.service.refreshList();
      },
      err=>{
        console.log(err);
      }
    )
  }

}
