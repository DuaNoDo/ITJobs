package bean;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class AdvertisementBean {
	private int adv_num; 
    private String adv_company;
    private String adv_name;
    private String adv_email;
    private String adv_content;
    private Timestamp adv_reg_date;
    private int adv_readcount;
}
