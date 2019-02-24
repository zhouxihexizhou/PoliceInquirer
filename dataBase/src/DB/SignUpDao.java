package DB;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import java.util.List;



public class SignUpDao {
    private String no;
    private String pasw;
    private String age;
    private String telephone;
	public SignUpDao(String no, String pasw, String age, String telephone) {
		super();
		this.no = no;
		this.pasw = pasw;
		this.age = age;
		this.telephone = telephone;
	}
	
	public boolean check()
	{
		Sign sign=new Sign(this.no,this.pasw,this.age,this.telephone);
		if(sign.createCon()==false) return false;
		else if(sign.queryUp()==false) return false;
		else 
		{
			sign.closeCon();
			return true;
		}
			
	}
	
	public boolean signed()
	{
		Sign sign=new Sign(this.no,this.pasw,this.age,this.telephone);
		if(sign.createCon()==false) return false;
		else if(sign.queryIn()==false) return false;
		else 
		{
			sign.closeCon();
			return true;
		}
			
	}
}
