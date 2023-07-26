Public with sharing class DemoClass {
Public Account createAccount(String name){
    Database.insert(new Account(Name = name),AccessLevel.USER_MODE);
    return a;
  }  
}