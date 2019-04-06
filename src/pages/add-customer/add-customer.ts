import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the AddCustomerPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

import { HTTP } from '@ionic-native/http';

@IonicPage()
@Component({
  selector: 'page-add-customer',
  templateUrl: 'add-customer.html',
})
export class AddCustomerPage {
  customers={
    ID_member:"",
    ID_status:"",
    name_customer:"",
    tel_customer:"",
    username_customer:"",
    password_customer:""
  };
  constructor(public navCtrl: NavController, public navParams: NavParams, public http:HTTP) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad AddCustomerPage');
  }

  AddCustomer(){
    let url="http://localhost:8080/AddCustomer";
    this.http.post(url,this.customers,{})  //ส่งข้อมูลแบบ post
      .then(data=>{ 
        console.log(data.data.msg);
      }); //เมื่อส่งข้อมูลเสร็จแล้วให้ทำงาน
  }


}
