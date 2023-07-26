Public with sharing class DemoClass {
Public Account createAccount(String name){ 
    Account a = new Account();
    a.Name = name;
    Database.insert(a,AccessLevel.USER_MODE);
    return a;
  }  
}