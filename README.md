# BankTransByUserAccountNos# using Spring Boot + Spring Security + JPA+Hibernate+REST API 

1.Prerequisites:- Java 8 +Maven+MySql DataBase+scripts.sql<br>
2.execute the queries on MySql command Line or open MySql Workbench and browse the script<br>
by clicking on the "file' menu and click on 'Run SQL Script'.<br>
3.Download the source code from Github.<br>
4.Run  "mvn clean install" from BankUserApplication and BankMetaDataApplication.<br>
5.Once jars are generated in the target folder, please run the jars by using the commands:<br>

6.App1 -> target -> java -jar BankUserApplication-0.0.1-SNAPSHOT.jar<br>
	App2 -> target -> java -jar BankMetaDataApplication-0.0.1-SNAPSHOT.jar<br>

7.Both applications are running using embedded tomcat.<br>
Assumptions:

1.Its a POC ,Hence it wont support https/TLS.
2.Hard coded values  exist in BankUserApplication like baseUrl  as its a POC,actually it should be in config file.
3.Code comments are not added,JUnit tests are not added as its a POC.
4.Basic Authentication Mechanism is used, in practise a standard mechanism  like OAuth can be used.
5.Data in database should be encrypted ,however its not done as its POC.
6.Both applications database should be different but in same network.
7.There should not be any firewall block to download maven dependencies.
8.The ApplicationBankMetaDataApplication login values will be mocked from database as we<br> will not be having  access to get BankAccount details.
currently we have inserted app2_user1 as username and password as default.

8.if BankUserApplication is passing the bankid which is not maintained/the credentials which <br>are not there in database ,you will be getting empty JSON Object.
9.The sample Request Body while invoking the service is mentioned below


i.http://localhost:8080/signup/signUpUser --For Registration
request Body
{ 
	"firstName":"ravi",
	"lastName":"bega",
	"username":"App1_user3",
	"password":"password",
	"emailId":"xts@co.com",
	"phoneNo":"8764"
	

}

ii.http://localhost:8080/bank/listOfBanks --For Retrieving list Of Banks
Request Header :username:app1_user3

select Basic Auth and pass username and password which are passed in the Registration api

iii.http://localhost:8080/bank/getMetadataOfBank
username:app1_user3

iv.http://localhost:8080/bank/getBankAccounts
 RequestHeader:app1_user3
content_type:application/json
bankId:1

RequestBody :
{

"bankId":"1",
"Username":"app2_user1",
"password":"password"

} these are the BankMetaDataApplication credentials

If the specifib BankId is not there in BankMetaDataApplication ,you will be getting am empty JSON object.







