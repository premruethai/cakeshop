import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { DetailPage } from '../detail/detail'
import { AddCustomerPage } from '../add-customer/add-customer'

import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  customer : any=0;
  constructor(public navCtrl: NavController,public navParam : NavParams,public http:Http) {
      this.http.get('http://localhost:8080/showcustomer')
      .map(res=>res.json())
      .subscribe(data=>{
        this.customer=data;
      });

      
  }
  showDetail(id){
       this.navCtrl.push(DetailPage,{ID_customer : id});

  }

  showAddcustomer(){
    this.navCtrl.push(AddCustomerPage);

}

}
