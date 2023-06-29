//to come the all the values  from Reg_Servlet.java to set the value in private 
//we using getter and setter methode for user details
package Reg_Login;

public class Member {
	
	
private String uname,email,password,mobile,DOB,Gender,Address,place,state;

private int pincode;
public Member() {
	super();
	// TODO Auto-generated constructor stub
}public Member(String uname, String email, String password, String mobile, String dOB, String gender, String address,
		String place, String state, int pincode) {
	super();
	this.uname = uname;
	this.email = email;
	this.password = password;
	this.mobile = mobile;
	DOB = dOB;
	Gender = gender;
	Address = address;
	this.place = place;
	this.state = state;
	this.pincode = pincode;
}



public String getUname() {
	return uname;
}

public void setUname(String uname) {
	this.uname = uname;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getMobile() {
	return mobile;
}

public void setMobile(String mobile) {
	this.mobile = mobile;
}

public String getDOB() {
	return DOB;
}

public void setDOB(String dOB) {
	DOB = dOB;
}

public String getGender() {
	return Gender;
}

public void setGender(String gender) {
	Gender = gender;
}

public String getAddress() {
	return Address;
}

public void setAddress(String address) {
	Address = address;
}

public String getPlace() {
	return place;
}

public void setPlace(String place) {
	this.place = place;
}

public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}

public int getPincode() {
	return pincode;
}

public void setPincode(int pincode) {
	this.pincode = pincode;
}



}
