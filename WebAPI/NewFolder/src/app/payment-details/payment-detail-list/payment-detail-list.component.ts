import { Component, OnInit } from '@angular/core';
import { PaymentDetailService } from 'src/app/shared/payment-detail.service';
import { PaymentDetail } from 'src/app/shared/payment-detail.model';

@Component({
  selector: 'app-payment-detail-list',
  templateUrl: './payment-detail-list.component.html',
  styles: [
  ]
})
export class PaymentDetailListComponent implements OnInit {

  constructor(public service: PaymentDetailService) { }

  ngOnInit() {
   this.service.refreshList();
  }
  populateForm(pd:PaymentDetail){
    this.service.formData = Object.assign({},pd);
  }

  onDelete(pmId:number)
  {
    if(confirm("Are you sure to delete the record ?"))
    {
      this.service.deletePaymentDetail(pmId)
    .subscribe(
      res=>{
        this.service.refreshList();
        alert("Data deleted successfully...!");
      },
      err=>{
        console.log(err);
        
      })
    }
    
  }
}
