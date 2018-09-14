package proc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.AdvertisementBean;
import jdbc.IT_JDBC_conn;

public class IT_adv_DAO {
	private static IT_adv_DAO instance;
    private IT_adv_DAO(){}
    

    public static IT_adv_DAO getInstance(){
        if(instance == null ) instance = new IT_adv_DAO();
        return instance;
    }
    public void insertAdvertise(AdvertisementBean adv) 
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
        String sql="";
        try {
        	conn=(Connection)IT_JDBC_conn.JDBC_connection();
            sql = "insert into advertisement values(?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, adv.getAdv_num());
            pstmt.setString(2, adv.getAdv_company());
            pstmt.setString(3, adv.getAdv_name());
            pstmt.setString(4,adv.getAdv_email());
			pstmt.setString(5, adv.getAdv_content());
			pstmt.setTimestamp(6, adv.getAdv_reg_date());
			pstmt.setInt(7, adv.getAdv_readcount());
			
            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    

	public int getAdvCount()
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
        	conn=(Connection)IT_JDBC_conn.JDBC_connection();
            
            pstmt = conn.prepareStatement("select count(*) from advertisement");
            rs = pstmt.executeQuery();

            if (rs.next()) {
               x= rs.getInt(1);
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }

	//湲��쓽 紐⑸줉(蹂듭닔媛쒖쓽 湲�)�쓣 媛��졇�샂(select臾�) <=list.jsp�뿉�꽌 �궗�슜
	public List<AdvertisementBean> getAdvertisement()
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<AdvertisementBean> advList=null;
        try {
        	conn=(Connection)IT_JDBC_conn.JDBC_connection();
            
            pstmt = conn.prepareStatement("select * from advertisement");
            rs = pstmt.executeQuery();

            if (rs.next()) {
                advList = new ArrayList<AdvertisementBean>();
                do{
                  AdvertisementBean adv= new AdvertisementBean();
				  adv.setAdv_num(rs.getInt("adv_num"));
				  adv.setAdv_company(rs.getString("adv_company"));
				  adv.setAdv_name(rs.getString("adv_name"));
				  adv.setAdv_email(rs.getString("adv_email"));
				  adv.setAdv_content(rs.getString("adv_content"));
				  adv.setAdv_reg_date(rs.getTimestamp("adv_reg_date"));
				  adv.setAdv_readcount(rs.getInt("adv_readcount"));

                  advList.add(adv);
			    }while(rs.next());
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return advList;
    }
 
	//湲��쓽 �궡�슜�쓣 蹂닿린(1媛쒖쓽 湲�)(select臾�)<=content.jsp�럹�씠吏��뿉�꽌 �궗�슜
	public AdvertisementBean getAdvertisement(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        AdvertisementBean adv=null;
        try {
        	conn=(Connection)IT_JDBC_conn.JDBC_connection();

            pstmt = conn.prepareStatement("update advertisement set readcount=readcount+1 where num = ?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

            pstmt = conn.prepareStatement("select * from advertisement where adv_num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
               adv=new AdvertisementBean();
            		   
               adv.setAdv_num(rs.getInt("adv_num"));
               adv.setAdv_company(rs.getString("adv_company"));
               adv.setAdv_name(rs.getString("adv_name"));
               adv.setAdv_email(rs.getString("adv_email"));
               adv.setAdv_content(rs.getString("adv_content"));
               adv.setAdv_reg_date(rs.getTimestamp("adv_reg_date"));
               adv.setAdv_readcount(rs.getInt("adv_readcount"));
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return adv;
    }
    

    public AdvertisementBean updateGetArticle(int num)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        AdvertisementBean adv=null;
        try {
        	conn=(Connection)IT_JDBC_conn.JDBC_connection();

            pstmt = conn.prepareStatement(
            	"select * from advertisement where adv_num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	adv=new AdvertisementBean();
     		   
                adv.setAdv_num(rs.getInt("adv_num"));
                adv.setAdv_company(rs.getString("adv_company"));
                adv.setAdv_name(rs.getString("adv_name"));
                adv.setAdv_email(rs.getString("adv_email"));
                adv.setAdv_content(rs.getString("adv_content"));
                adv.setAdv_reg_date(rs.getTimestamp("adv_reg_date"));
                adv.setAdv_readcount(rs.getInt("adv_readcount"));
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return adv;
    }

    //湲� �닔�젙泥섎━�뿉�꽌 �궗�슜(update臾�)<=updatePro.jsp�뿉�꽌 �궗�슜
    public int updateArticle(AdvertisementBean adv)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;

        String sql="";
		int x=-1;
        try {
        	conn=(Connection)IT_JDBC_conn.JDBC_connection();
			  
                sql="update advertisement set adv_name=?,adv_email=?,adv_company=?,adv_content=? where adv_num=?";
                pstmt = conn.prepareStatement(sql);

                pstmt.setInt(1, adv.getAdv_num());
                pstmt.setString(2, adv.getAdv_company());
                pstmt.setString(3, adv.getAdv_name());
                pstmt.setString(4,adv.getAdv_email());
    			pstmt.setString(5, adv.getAdv_content());
    			pstmt.setTimestamp(6, adv.getAdv_reg_date());
    			pstmt.setInt(7, adv.getAdv_readcount());
                pstmt.executeUpdate();
				x= 1;
				
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
    
    //湲��궘�젣泥섎━�떆 �궗�슜(delete臾�)<=deletePro.jsp�럹�씠吏��뿉�꽌 �궗�슜
    public int deleteAdvertisement(int num)
        throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        int x=-1;
        try {
        	conn=(Connection)IT_JDBC_conn.JDBC_connection();
        	
				pstmt = conn.prepareStatement("delete from advertisement where adv_num=?");
                pstmt.setInt(1, num);
                pstmt.executeUpdate();
				x= 1; //湲��궘�젣 �꽦怨�
				
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return x;
    }
}
