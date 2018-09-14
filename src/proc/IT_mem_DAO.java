package proc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.IT_company_mem_bean;
import bean.IT_personal_mem_bean;
import jdbc.IT_JDBC_conn;


public class IT_mem_DAO {
	private static IT_mem_DAO instance;
    private IT_mem_DAO(){}
    
    //占싱깍옙占쏙옙 占쏙옙占쏙옙
    public static IT_mem_DAO getInstance(){
        if(instance == null ) instance = new IT_mem_DAO();
        return instance;
    }
    
    // 회占쏙옙占쏙옙占쏙옙 占쌨쇽옙占쏙옙
    public void joinCompanyMember(IT_company_mem_bean bean) {
        
        Connection conn = null;
        PreparedStatement pstm = null;
 
        try {
            
            conn=(Connection)IT_JDBC_conn.JDBC_connection();
            String sql="INSERT INTO IT_company_member VALUES(?,?,?,?,?,?,?,?,now())";
            
            pstm = conn.prepareStatement(sql);
            String mail=bean.getIT_C_mail1()+"@"+bean.getIT_C_mail2();
            String phone=bean.getIT_C_phone1()+"-"+bean.getIT_C_phone2()+"-"+bean.getIT_C_phone3();
            String addr=bean.getIT_C_addr1()+","+bean.getIT_C_addr2();
            
            // IT_personal_mem_bean占쏙옙 占쏙옙占� 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싼댐옙.
            pstm.setString(1, bean.getIT_C_id());
            pstm.setString(2, bean.getIT_C_pass());
            pstm.setString(3, bean.getIT_C_num());
            pstm.setString(4, bean.getIT_C_name());
            pstm.setString(5, mail);
            pstm.setString(6, phone);
            pstm.setString(7, bean.getIT_C_zip());
            pstm.setString(8, addr);

            System.out.println(pstm.toString());
            // 占쏙옙占쏙옙占쏙옙占쏙옙
            pstm.executeUpdate();
            
            
 
        } catch (Exception sqle) {
            try {
                conn.rollback(); // 占쏙옙占쏙옙占쏙옙 占싼뱄옙
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    pstm = null;
                }
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
    } 
public void joinPersonalMember(IT_personal_mem_bean bean) {
        
        Connection conn = null;
        PreparedStatement pstm = null;
 
        try {
            
            conn=(Connection)IT_JDBC_conn.JDBC_connection();
            String sql="INSERT INTO IT_personal_member VALUES(?,?,?,?,?,?,?,?,now())";
            
            pstm = conn.prepareStatement(sql);
            String mail=bean.getIT_mail1()+"@"+bean.getIT_mail2();
            String phone=bean.getIT_phone1()+"-"+bean.getIT_phone2()+"-"+bean.getIT_phone3();
            String addr=bean.getIT_addr1()+","+bean.getIT_addr2();
            
            // IT_personal_mem_bean占쏙옙 占쏙옙占� 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싼댐옙.
            pstm.setString(1, bean.getIT_id());
            pstm.setString(2, bean.getIT_pass());
            pstm.setString(3, bean.getIT_name());
            pstm.setString(4, mail);
            pstm.setString(5, phone);
            pstm.setString(6, bean.getIT_gender());
            pstm.setString(7, bean.getIT_zip());
            pstm.setString(8, addr);

            System.out.println(pstm.toString());
            // 占쏙옙占쏙옙占쏙옙占쏙옙
            pstm.executeUpdate();
            
            
 
        } catch (Exception sqle) {
            try {
                conn.rollback(); // 占쏙옙占쏙옙占쏙옙 占싼뱄옙
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    pstm = null;
                }
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
    } 
public String searchCompanyMember(IT_company_mem_bean bean) {
        
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rs=null;
        String result=null;
        try {
            
            conn=(Connection)IT_JDBC_conn.JDBC_connection();
            String sql="select IT_C_id from IT_c_member where IT_C_name=? and IT_C_mail=? and IT_C_phone=?";
            // 占쏙옙占쏙옙占쏙옙占쏙옙
            pstm = conn.prepareStatement(sql);
            String mail=bean.getIT_C_mail1()+"@"+bean.getIT_C_mail2();
            String phone=bean.getIT_C_phone1()+"-"+bean.getIT_C_phone2()+"-"+bean.getIT_C_phone3();

            pstm.setString(1, bean.getIT_C_name());
            pstm.setString(2, mail);
            pstm.setString(3, phone);


            System.out.println(pstm.toString());
            // 占쏙옙占쏙옙占쏙옙占쏙옙
            rs=pstm.executeQuery();

            while(rs.next()) {
            	result=rs.getString("IT_C_id");
            }
            
        } catch (Exception sqle) {
            try {
                conn.rollback(); // 占쏙옙占쏙옙占쏙옙 占싼뱄옙
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                    pstm = null;
                }
                if (conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
        if(!result.isEmpty())
        	return result;
        else
        	return "0";
    } 
public String searchPersonalMember(IT_personal_mem_bean bean) {
    
    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs=null;
    String result=null;
    try {
        
        conn=(Connection)IT_JDBC_conn.JDBC_connection();
        String sql="select IT_id from IT_personal_member where IT_name=? and IT_mail=?";
        // 占쏙옙占쏙옙占쏙옙占쏙옙
        pstm = conn.prepareStatement(sql);
        String mail=bean.getIT_mail1()+"@"+bean.getIT_mail2();

        pstm.setString(1, bean.getIT_name());
        pstm.setString(2, mail);


        System.out.println(pstm.toString());
        // 占쏙옙占쏙옙占쏙옙占쏙옙
        rs=pstm.executeQuery();

        while(rs.next()) {
        	result=rs.getString("IT_id");
        }
        
    } catch (Exception sqle) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        throw new RuntimeException(sqle.getMessage());
    } finally {
        try {
            if (pstm != null) {
                pstm.close();
                pstm = null;
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
    if(!result.isEmpty())
    	return result;
    else
    	return "0";
} 
//수정
public void modifyCompanyMember(IT_company_mem_bean bean) {
    
    Connection conn = null;
    PreparedStatement pstm = null;

    try {
        
        conn=(Connection)IT_JDBC_conn.JDBC_connection();
        String sql="update set IT_C_pass=? , IT_C_name=? , IT_C_phone=? , IT_C_zip=?, IT_C_addr=? where IT_C_id=? and IT_C_num=?";
        // 占쏙옙占쏙옙占쏙옙占쏙옙
        pstm = conn.prepareStatement(sql);

        String phone=bean.getIT_C_phone1()+"-"+bean.getIT_C_phone2()+"-"+bean.getIT_C_phone3();
        String addr=bean.getIT_C_addr1()+","+bean.getIT_C_addr2();
        

        pstm.setString(1, bean.getIT_C_pass());
        pstm.setString(2, bean.getIT_C_name());
        pstm.setString(3, phone);
        pstm.setString(4, bean.getIT_C_zip());
        pstm.setString(5, addr);
        pstm.setString(6, bean.getIT_C_id());
        pstm.setString(7, bean.getIT_C_num());

        // 占쏙옙占쏙옙占쏙옙占쏙옙
        pstm.executeUpdate();



    } catch (Exception sqle) {
        try {
            conn.rollback(); // 占쏙옙占쏙옙占쏙옙 占싼뱄옙
        } catch (SQLException e) {
            e.printStackTrace();
        }
        throw new RuntimeException(sqle.getMessage());
    } finally {
        try {
            if (pstm != null) {
                pstm.close();
                pstm = null;
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
} 
public void modifyMember(IT_personal_mem_bean bean) {
    
    Connection conn = null;
    PreparedStatement pstm = null;

    try {
        
        conn=(Connection)IT_JDBC_conn.JDBC_connection();
        String sql="update set IT_pass=? , IT_name=? , IT_phone=? , IT_zip=?, IT_addr=? where IT_id=?";
        // 占쏙옙占쏙옙占쏙옙占쏙옙
        pstm = conn.prepareStatement(sql);

        String phone=bean.getIT_phone1()+"-"+bean.getIT_phone2()+"-"+bean.getIT_phone3();
        String addr=bean.getIT_addr1()+","+bean.getIT_addr2();
        

        pstm.setString(1, bean.getIT_pass());
        pstm.setString(2, bean.getIT_name());
        pstm.setString(3, phone);
        pstm.setString(4, bean.getIT_zip());
        pstm.setString(5, addr);
        pstm.setString(6, bean.getIT_id());

        // 占쏙옙占쏙옙占쏙옙占쏙옙
        pstm.executeUpdate();



    } catch (Exception sqle) {
        try {
            conn.rollback(); // 占쏙옙占쏙옙占쏙옙 占싼뱄옙
        } catch (SQLException e) {
            e.printStackTrace();
        }
        throw new RuntimeException(sqle.getMessage());
    } finally {
        try {
            if (pstm != null) {
                pstm.close();
                pstm = null;
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
} 
//로그인
public int checkCompanyMember(IT_company_mem_bean bean){
	int rst = 0;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String IT_C_pass=bean.getIT_C_pass();
    try{
	    conn = (Connection)IT_JDBC_conn.JDBC_connection();
	    String sql = "select * from IT_company_member where IT_C_id=?";
	    ps = conn.prepareStatement(sql);
	    ps.setString(1, bean.getIT_C_id());
	    rs = ps.executeQuery();
	    if(rs.next()){
			String DBpass = rs.getString("IT_C_pass");
				if((DBpass.trim()).equals((IT_C_pass.trim()))){
     				rst=2;  // 濡쒓렇�씤�꽦怨�
    			}
				else{
     				rst=1;   // 鍮꾨�踰덊샇 ��由�
    			}
  			 }  // �븘�씠�뵒 �뾾�쓬
 		}catch(Exception e){
 			e.printStackTrace();
 		}finally{
 			try {
 	            if (rs != null) {
 	                rs.close();
 	                rs = null;
 	            }
 	            if (conn != null) {
 	                conn.close();
 	                conn = null;
 	            }
 	        } catch (Exception e) {
 	            throw new RuntimeException(e.getMessage());
 	        }
 	}
 return rst;
}
public int checkPersonalMember(IT_personal_mem_bean bean){
	int rst = 0;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String IT_pass=bean.getIT_pass();
    try{
	    conn = (Connection)IT_JDBC_conn.JDBC_connection();
	    String sql = "select * from IT_personal_member where IT_id=?";
	    ps = conn.prepareStatement(sql);
	    ps.setString(1, bean.getIT_id());
	    rs = ps.executeQuery();
	    while(rs.next()){
			String DBpass = rs.getString("IT_pass");
				if((DBpass.trim()).equals((IT_pass.trim()))){
     				rst=2;  // 濡쒓렇�씤�꽦怨�
    			}
				else{
     				rst=1;   // 鍮꾨�踰덊샇 ��由�
    			}
  			 }  // �븘�씠�뵒 �뾾�쓬
 		}catch(Exception e){
 			e.printStackTrace();
 		}finally{
 			try {
 	            if (rs != null) {
 	                rs.close();
 	                rs = null;
 	            }
 	            if (conn != null) {
 	                conn.close();
 	                conn = null;
 	            }
 	        } catch (Exception e) {
 	            throw new RuntimeException(e.getMessage());
 	        }
 	}
 return rst;
}
//중복 확인
public int checkPersonalMemberDuplicate(IT_personal_mem_bean bean){
	int rst = 0;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String getID="";
    try{
	    conn = (Connection)IT_JDBC_conn.JDBC_connection();
	    String sql = "select * from IT_personal_member where IT_id=?";
	    ps = conn.prepareStatement(sql);
	    ps.setString(1, bean.getIT_id());
	    rs = ps.executeQuery();
	    while(rs.next()){
			getID=rs.getString("IT_id");
			if(getID.isEmpty())
				rst=0;
			else
				rst=1;
	    }  
 		}catch(Exception e){
 			e.printStackTrace();
 		}finally{
 			try {
 	            if (rs != null) {
 	                rs.close();
 	                rs = null;
 	            }
 	            if (conn != null) {
 	                conn.close();
 	                conn = null;
 	            }
 	        } catch (Exception e) {
 	            throw new RuntimeException(e.getMessage());
 	        }
 	}
 return rst;
}
public int checkCompanyMemberDuplicate(IT_company_mem_bean bean){
	int rst = 0;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String getID="";
    try{
	    conn = (Connection)IT_JDBC_conn.JDBC_connection();
	    String sql = "select * from IT_company_member where IT_C_id=?";
	    ps = conn.prepareStatement(sql);
	    ps.setString(1, bean.getIT_C_id());
	    rs = ps.executeQuery();
	    if(rs.next()){
			getID=rs.getString("IT_C_id");
			if(getID.isEmpty())
				rst=0;
			else
				rst=1;
	    }  
 		}catch(Exception e){
 			e.printStackTrace();
 		}finally{
 			try {
 	            if (rs != null) {
 	                rs.close();
 	                rs = null;
 	            }
 	            if (conn != null) {
 	                conn.close();
 	                conn = null;
 	            }
 	        } catch (Exception e) {
 	            throw new RuntimeException(e.getMessage());
 	        }
 	}
 return rst;
}
public String searchPwCompanyMember(IT_company_mem_bean bean) {
    
    Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs=null;
    String result=null;
    try {
        
        conn=(Connection)IT_JDBC_conn.JDBC_connection();
        String sql="select IT_C_pass from IT_c_member where IT_C_id=? and IT_C_name=? and IT_C_mail=? and IT_C_phone=?";
        // 占쏙옙占쏙옙占쏙옙占쏙옙
        pstm = conn.prepareStatement(sql);
        String mail=bean.getIT_C_mail1()+"@"+bean.getIT_C_mail2();
        String phone=bean.getIT_C_phone1()+"-"+bean.getIT_C_phone2()+"-"+bean.getIT_C_phone3();

        pstm.setString(1, bean.getIT_C_id());
        pstm.setString(2, bean.getIT_C_name());
        pstm.setString(3, mail);
        pstm.setString(4, phone);


        System.out.println(pstm.toString());
        // 占쏙옙占쏙옙占쏙옙占쏙옙
        rs=pstm.executeQuery();

        while(rs.next()) {
        	result=rs.getString("IT_C_pass");
        }
        
    } catch (Exception sqle) {
        try {
            conn.rollback(); // 占쏙옙占쏙옙占쏙옙 占싼뱄옙
        } catch (SQLException e) {
            e.printStackTrace();
        }
        throw new RuntimeException(sqle.getMessage());
    } finally {
        try {
            if (pstm != null) {
                pstm.close();
                pstm = null;
            }
            if (conn != null) {
                conn.close();
                conn = null;
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
    if(!result.isEmpty())
    	return result;
    else
    	return "0";
} 
public String searchPwPersonalMember(IT_personal_mem_bean bean) {

Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs=null;
String result=null;
try {
    
    conn=(Connection)IT_JDBC_conn.JDBC_connection();
    String sql="select IT_pass from IT_personal_member where IT_id=? and IT_name=? and IT_mail=?";
    // 占쏙옙占쏙옙占쏙옙占쏙옙
    pstm = conn.prepareStatement(sql);
    String mail=bean.getIT_mail1()+"@"+bean.getIT_mail2();

    pstm.setString(1, bean.getIT_id());
    pstm.setString(2, bean.getIT_name());
    pstm.setString(3, mail);

    System.out.println(pstm.toString());
    // 占쏙옙占쏙옙占쏙옙占쏙옙
    rs=pstm.executeQuery();

    while(rs.next()) {
    	result=rs.getString("IT_pass");
    }
    
} catch (Exception sqle) {
    try {

    } catch (Exception e) {
        e.printStackTrace();
    }
    throw new RuntimeException(sqle.getMessage());
} finally {
    try {
        if (pstm != null) {
            pstm.close();
            pstm = null;
        }
        if (conn != null) {
            conn.close();
            conn = null;
        }
    } catch (Exception e) {
        throw new RuntimeException(e.getMessage());
    }
}
if(!result.isEmpty())
	return result;
else
	return "0";
} 

}
